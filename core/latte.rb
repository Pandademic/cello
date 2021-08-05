# frozen_string_literal: true
require 'down'
require 'fileutils'
while ARGV.empty?
  abort('ERROR:No task specified')
end
def help()
  puts 'Latte help sytem'
  puts "To install a image from a url try latte InstallImage 'url of image' "
  #puts 'for more help try the docs'
end
def create(name)
  @name = "#{name}"
  puts "Creating #{name}"
  puts "Working directory:"
  FileUtils.pwd()
  abort("Failure")
  
FileUtils.touch("info.log")
if ARGV.first == 'help'
   help()
end
if ARGV.first == 'InstallImg'
  @url = ARGV[1]
  if @url.to_s == ''
    abort('This URL is non-existent')
  else
    File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download started\n" }
    Down.download(@url.to_s, destination: 'cups/WithUrl/')
  end

if ARGV.first == "create"
   create("#{ARGV[1]}")
end