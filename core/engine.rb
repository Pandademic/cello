=begin
engine.rb vs cello.rb
______
cello.rb is the most stable version of cello in the dev branch.All improvments will now be made on the engine file and then be coppied to cello.rb and on release to the stable branch
=end
#TODO: Add install instructions for engine & fix dir strucyure
# frozen_string_literal
require 'inifile'
require 'open-uri'
require 'colorize'
require 'faraday'
# module to create errors (Engine 0.1.0)
module Error
	def self.emptyPkg
		puts 'Empty package names are not allowed'.colorize(:red)
    exit 1
	end
	def self.server404
		 #EXPERIMENT: No param. direct var insert
		 puts "server #{$TRAY} responded 404 for query #{$query} ".colorize(:red)
     exit 1
	end
end
# module to download Packages
module Pkg
  def self.findPkg(query)
    if $query == ''
				Error.emptyPkg
    end
    Pkg.getPkgfile
  end

  def self.getPkgfile
    if $TRAY == 'main'
        packageFileURL="https://raw.githubusercontent.com/Pandademic/cello/master/pkgs/#{$query}.ini"
    else
        packageFileURL="https://raw.githubusercontent.com/#{$TRAY}/master/pkgs/#{$query}.ini"
    end
    res = Faraday.get(packageFileURL.to_s).status
    if res.to_s == '404'
				Error.server404
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
