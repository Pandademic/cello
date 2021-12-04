# frozen_string_literal: true
require 'inifile'
require 'open-uri'
require 'colorize'
require 'faraday'
# module to download Packages
module Pkg
  def self.parse_pkg_name(_query)
		if $userData[:query].empty?
      puts 'Empty package names are not allowed'.colorize(:red)
      exit 1
    end
    Pkg.getPkgfile
  end

  def self.getPkgfile
    if $userData[:tray] == 'main'
    	package_file_url = "https://raw.githubusercontent.com/Pandademic/cello/master/pkgs/#{$userData[:query]}.ini"
    else
    	package_file_url = "https://raw.githubusercontent.com/#{$userData[:tray]}/master/tray/#{$userData[:query]}.ini"
    end
    res = Faraday.get(package_file_url.to_s).status
    if res.to_s == '404'
      puts "#{$userData[:query]} does not exist in #{$userData[:tray]}".colorize(:red)
      exit 1
    end
    system("curl  -O #{package_file_url}")
    puts 'package file download complete!'.colorize(:green)
    Pkg.downloadLatest
  end

  def self.downloadLatest
    file = IniFile.load("#{$userData[:query]}.ini")
    puts 'Package file read!'.colorize(:green)
    pkgdata = file['package']
    zipsupport = pkgdata['Media']
    #if zipsupport == true
    if zipsupport
      @RURL = pkgdata['MediaUrl']
      system("curl -O #{@RURL}")
      puts "Installed #{$userData[:query]} from #{$userData[:tray]}".colorize(:green)
    else
      @Isc = pkgdata['InstallCommand'] # install command
      system @Isc.to_s
      puts "#{$query} from #{$TRAY} installed successfully".colorize(:green)
    end
    exit 0
  end
end
$userData={:cmd => ARGV[0] ,:query => ARGV[1], :tray => ARGV[2].delete('--') }
#$query = ARGV[1] == $userData[:query]
#$TRAY = ARGV[2].delete('--')
if $userData[:cmd] == 'add'
  puts "Starting install of #{$userData[:query]} from #{$userData[:tray]}".colorize(:green)
  Pkg.parse_pkg_name $query
else
  puts 'Unknown Command'.colorize(:red)
  exit 1
end
