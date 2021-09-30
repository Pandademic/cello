# frozen_string_literal
require 'inifile'
require 'open-uri'
# module to download Packages
module Pkg
  def self.findPkg(query)
    $query = query
    puts "Getting #{$query}"
    Pkg.getPkgfile
  end

  def self.getPkgfile
    pfr = URI.open("https://raw.githubusercontent.com/Pandademic/Latte/master/pkgs/#{$query}.ini").read
    packageFileURL = "https://raw.githubusercontent.com/Pandademic/Latte/master/pkgs/#{$query}.ini"
    puts "Package file:#{pfr}"
    # implemnt no donwload of pkg file by using pfr
    system("curl  -O #{packageFileURL}")
    puts 'package file download complete'
    Pkg.downloadLatest
  end

  def self.downloadLatest
    file = IniFile.load("#{$query}.ini")
    puts 'loaded file'
    pkgdata = file['package']
    zipsupport = pkgdata['Media']
    if zipsupport == true
      @RURL = pkgdata['MediaUrl']
      system "curl -O #{@RURL}"
    else
      @Isc = pkgdata['InstallCommand'] # install command
      system @Isc.to_s
    end
  end
end
@param1 = ARGV[1]
abort 'That is not a command' while ARGV.empty?
if ARGV[0] == 'add'
  Pkg.findPkg @param1.to_s
elsif Pkg.findPkg @param1.to_s
else
  puts 'Unknown Command'
end
