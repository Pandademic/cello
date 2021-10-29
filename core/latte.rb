# frozen_string_literal
require 'inifile'
require 'open-uri'
require 'colorize'
# module to download Packages
module Pkg
  def self.findPkg(query)
    $query = query
    puts "Starting install of  #{$query}".colorize(:yellow)
    Pkg.getPkgfile
  end

  def self.getPkgfile
    if $TRAY == "main"
      packageFileURL = "https://raw.githubusercontent.com/Pandademic/Latte/master/pkgs/#{$query}.ini"
    else
      packageFileURL= "https://raw.githubusercontent.com/#{$TRAY}/master/pkgs/#{$query}.ini"
    end
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
      puts "Installed #{query} from #{$TRAY}".colorize(:green)
    else
      @Isc = pkgdata['InstallCommand'] # install command
      system @Isc.to_s
      puts "#{$query} installed successfully".colorize(:green)
    end
  end
end
@param1 = ARGV[1]
$TRAY = ARGV[2].chomp(":tray")
if ARGV[0] == 'add'
  puts "Starting install of #@param1 from #$TRAY".colorize(:green)
  Pkg.findPkg @param1.to_s
else
  puts 'Unknown Command'.colorize(:red)
  exit 1
end
