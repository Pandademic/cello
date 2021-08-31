# frozen_string_literal
require 'inifile'
require 'open-uri'
require 'facter'
$os = Facter['osfamily'].value
puts "you are on #{$os}"
abort('ERROR:No task specified') while ARGV.empty?
# Module to Provide help service
# TODO:bring back helper
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
    $packageFileread = URI.open("https://raw.githubusercontent.com/Pandademic/Latte/master/packages/#{$query}.ini").read
    $packageFileURL = "https://raw.githubusercontent.com/Pandademic/Latte/master/packages/#{$query}.ini"
    puts "Package file:#{$packageFileread}"
    system("wget #{$packageFileURL} --directory-prefix=/tmp/")
    puts 'package file download complete'
    Pkg.downloadLatest
    # TODO: implement begin.resuce,else,ensure,end
    # TODO: changes global vars to :: scopes
  end

  def self.downloadLatest
    file = IniFile.load("/tmp/#{$query}.ini")
    puts 'loaded file'
    $data = file['package']
    puts 'Release URL:'
    puts $data['Release']
    @RURL = $data['Release']
    system("wget #{@RURL}")
  end
end

module Osauth
  def auth
    osinfo = $file['Osinfo']
    puts 'supported oss'
    puts 'windows' if osinfo['windows-support'] == true
    puts 'macos' if osinfo['osx-support'] == true
    puts 'linux' if osinfo['linux-support'] == true
  end
end
# FileUtils.touch('info.log')
@param1 = ARGV[1]
Helper.man if ARGV[0] == 'man'
Pkg.findPkg(@param1.to_s) if ARGV[0] == 'install'
