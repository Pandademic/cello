# frozen_string_literal
require 'inifile'
require 'open-uri'
require 'facter'
# TODO: bring back helper
# module to download Packages
module Pkg
  def self.findPkg(query)
    @query = query
    puts "Getting #{@query}"
    $query = @query
    Pkg.getPkgfile
  end

  def self.getPkgfile
  ensure
    $pfr = URI.open("https://raw.githubusercontent.com/Pandademic/Latte/master/packages/#{$query}.ini").read
    $packageFileURL = "https://raw.githubusercontent.com/Pandademic/Latte/master/packages/#{$query}.ini"
    puts "Package file:#{$pfr}"
    system("wget #{$packageFileURL} --directory-prefix=/tmp/")
    puts 'package file download complete'
    Pkg.downloadLatest
    # TODO: implement begin.resuce,else,ensure,end
    # TODO: changes global vars to :: scopes
  end

  def self.downloadLatest
    file = IniFile.load("/tmp/#{$query}.ini")
    puts 'loaded file'
    $pkgdata = file['package']
    puts 'Release URL:'
    puts $pkgdata['Release']
    @RURL = $pkgdata['Release']
    system("wget #{@RURL}")
  end
end
# FileUtils.touch('info.log')
@param1 = ARGV[1]
$os = Facter['osfamily'].value
abort('ERROR:No task specified') while ARGV.empty?
Helper.man if ARGV[0] == 'man'
Pkg.findPkg(@param1.to_s) if ARGV[0] == 'install'
