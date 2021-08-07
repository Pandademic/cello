# frozen_string_literal: true

Bundler.require(:default)
abort('ERROR:No task specified') while ARGV.empty?
module Helper
   def helper.help
    puts 'Latte help sytem'
    puts "To install a image from a url try latte InstallImage 'url of image' "
   end
end
module Image
   def Image.Install()
    @url = ARGV[1]
    if @url.to_s == ''
      abort('This URL is non-existent')
     else
      File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download started\n" }
      Down.download(@url.to_s, destination: 'cups/WithUrl/')
   end
    
   end
end
FileUtils.touch('info.log')
case Mycase
 when ARGV.first == 'help'
   Helper.help
 when ARGV.first == 'InstallImg'
   Image.Install
  
