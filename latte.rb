# frozen_string_literal: true

require 'down'
require 'fileutils'
if ARGV.first == 'help'
  puts 'Latte help sytem'
  puts "To install a image from a url try latte InstallImage 'url of image' "
  puts 'for more help try the docs'
elsif ARGV.empty?
  abort('ERROR:No task specified')
end
if ARGV.first == 'InstallImg'
  @url = ARGV[1]
  if @url.to_s == ''
    abort('This URL is non-existent')
  else
    Down.download(@url.to_s, destination: 'cups/WithUrl/')
  end

else
  abort('This task does not exist')
end
