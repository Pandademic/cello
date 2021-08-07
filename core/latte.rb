# frozen_string_literal: true

require 'down'
require 'fileutils'
abort('ERROR:No task specified') while ARGV.empty?
def help
  puts 'Latte help sytem'
  puts "To install a image from a url try latte InstallImage 'url of image' "
  # puts 'for more help try the docs'
end
=begin
def create(name)
  @name = name.to_s
  puts "Creating #{name}"
  puts 'Working directory:'
  FileUtils.pwd
  puts 'Creating folder'
  FileUtils.cd('packages')
  FileUtils.mkdir(@name.to_s)
  FileUtils.cd(@name.to_s)
  puts 'creating packge.ini'
  FileUtils.touch('package.ini')
  puts 'done!'
end
=end
FileUtils.touch('info.log')
case Mycase
 when ARGV.first == 'help'
   help
 when ARGV.first == 'InstallImg'
   @url = ARGV[1]
   if @url.to_s == ''
     abort('This URL is non-existent')
    else
     File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download started\n" }
     Down.download(@url.to_s, destination: 'cups/WithUrl/')
  end
=begin
when ARGV.first == 'create'
  create((ARGV[1]).to_s)
end
=end
#create can no loner be done via command line
end