# frozen_string_literal: true
require 'inifile'
require 'open-uri'
require 'colorize'
require 'faraday'
# module to download Packages
module Pkg
  def self.parse_pkg_name(_query)
		if $query.empty?
      puts 'Empty package names are not allowed'.colorize(:red)
      exit 1
    end
    Pkg.getPkgfile
  end

  def self.getPkgfile
    if $TRAY == 'main'
    	package_file_url = "https://raw.githubusercontent.com/Pandademic/cello/master/pkgs/#{$query}.ini"
    else
    	package_file_url = "https://raw.githubusercontent.com/#{$TRAY}/master/pkgs/#{$query}.ini"
    end
    res = Faraday.get(package_file_url.to_s).status
    if res.to_s == '404'
      puts "#{$query} does not exist in #{$TRAY}".colorize(:red)
      exit 1
    end
    system("curl  -O #{package_file_url}")
    puts 'package file download complete!'.colorize(:green)
    Pkg.downloadLatest
  end

  def self.downloadLatest
    file = IniFile.load("#{$query}.ini")
    puts 'Package file read!'.colorize(:green)
    pkgdata = file['package']
    zipsupport = pkgdata['Media']
    #if zipsupport == true
    if zipsupport
      @RURL = pkgdata['MediaUrl']
      system("curl -O #{@RURL}")
      puts "Installed #{$query} from #{$TRAY}".colorize(:green)
    else
      @Isc = pkgdata['InstallCommand'] # install command
      system @Isc.to_s
      puts "#{$query} from #{$TRAY} installed successfully".colorize(:green)
    end
    exit 0
  end
end
$userData={:cmd => ARGV[0] ,:query => ARGV[1], :tray => ARGV[2].delete('--') }
#$query = ARGV[1]
#$TRAY = ARGV[2].delete('--')
if $userData[:cmd] == 'add'
  puts "Starting install of #{$query} from #{$TRAY}".colorize(:green)
  Pkg.parse_pkg_name $query
else
  puts 'Unknown Command'.colorize(:red)
  exit 1
end
