# frozen_string_literal
require 'inifile'
require 'open-uri'
require 'colorize'
require 'faraday'
# module to download Packages
module Error
  def self.emptyPkgName(query)
    puts "Empty Package name could not be queried at specified server(#{$TRAY})".colorize(:red)
    exit 1
  end
  def self.server404(server,query,serverurl)
    puts "#{server}(#{serverurl}) responded with 404 for query #{query} ".colorize(:red)
    exit 1
  end
end
module Pkg
  def self.findPkg(query)
    if $query == ""
      Error.emptyPkgName($query.to_s,)
    end
    Pkg.getPkgfile
  end
  def self.getPkgfile 
    if $TRAY == "main"
      packageFileURL = "https://raw.githubusercontent.com/Pandademic/cello/master/pkgs/#{$query}.ini"
    else
      packageFileURL= "https://raw.githubusercontent.com/#{$TRAY}/master/pkgs/#{$query}.ini"
    end
    res = Faraday.get("#{packageFileURL}").status
    if "#{res}" == "404"
        Error.server404($TRAY.to_s,$query.to_s,packageFileURL.to_s)

    if $query == ''
      puts 'Empty package names are not allowed'.colorize(:red)
      exit 1
    end
    Pkg.getPkgfile
  end

  def self.getPkgfile
    if $TRAY == 'main'
       packageFileURL = "https://raw.githubusercontent.com/Pandademic/cello/master/pkgs/#{$query}.ini"
    else
       packageFileURL = "https://raw.githubusercontent.com/#{$TRAY}/master/pkgs/#{$query}.ini"
    end
    res = Faraday.get(packageFileURL.to_s).status
    if res.to_s == '404'
      puts "#{$query} does not exist in #{$TRAY}".colorize(:red)
      exit 1

    system("curl  -O #{packageFileURL}")
    puts 'package file download complete!'.colorize(:green)
    Pkg.downloadLatest
  end

  def self.downloadLatest
    file = IniFile.load("#{$query}.ini")
    puts 'Package file read!'.colorize(:green)
    pkgdata = file['package']
    zipsupport = pkgdata['Media']
    if zipsupport == true
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
$query = ARGV[1]
$TRAY = ARGV[2].delete('--')
if ARGV[0] == 'add'
  puts "Starting install of #{$query} from #{$TRAY}".colorize(:green)
  Pkg.findPkg $query
else
  puts 'Unknown Command'.colorize(:red)
  exit 1
end
