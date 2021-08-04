# frozen_string_literal: true

require 'down'
require 'fileutils'
def InstallImage(url)
  File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download started\n" }
  case url.to_s
  when ''
    puts 'fatal Error:No url'
    puts 'Download failed'
    File.open('info.log', 'w') { |f| f.write "#{Time.now} -img- FATAL:No url\n" }
  when ' '
    puts 'fatal Error:No url'
    puts 'Download failed'
    File.open('info.log', 'w') { |f| f.write "#{Time.now} -Img- FATAL:No url\n" }
  else
    puts "Downloading file from #{url}"
    Down.download(url.to_s, destination: 'cups/WithUrl/')
    puts 'Download complete'
    File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download Complete\n" }

  end
end

def help
  puts 'Latte help sytem'
  puts "To install a image from a url try latte-InstallImage 'url of image' "
  puts 'for more help try the docs'
  puts 'or maybe the github repo'
end
# InstallImage ""test
# TODO: move to
