# frozen_string_literal: true

$destination = ''
$query=""
require 'down'
require 'inifile'
require 'fileutils'
require 'open-uri'
#require 'net/http'
#require 'uri'
require 'facter'
# require 'bundler'
# Bundler.require(:default)
abort('ERROR:No task specified') while ARGV.empty?
# Module to Provide help service
module Helper
  def self.help
    puts 'Latte help sytem'
    puts "To install a image from a url try latte InstallImage 'url of image' "
  end
end

# module to download Images
module Image
  def self.main(url)
    @url = url
    if @url.to_s == ''
      abort('This URL is non-existent')
    else
      File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download started\n" }
      Down.download(@url.to_s, destination: 'cups/WithUrl/')
    end
  end
end

# module to download Packages
module Pkg
  def self.findPkg(query)
    @query = query
    puts "Getting #@query"
    $query=@query
    Pkg.getPkgfile
    

    # puts "sourceUrl:#{@source}"
  end
  def self.getPkgfile()
      $packageFile=open("https://raw.githubusercontent.com/Pandademic/Latte/master/packages/#$query.ini")
      puts "Package file:/n #$packageFile"  

end
FileUtils.touch('info.log')
Helper.help if ARGV[0] == 'help'
@param1 = ARGV[1]
Pkg.findPkg(@param1.to_s) if ARGV[0] == 'install'
