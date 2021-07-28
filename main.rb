require "down"
def latte-InstallImage(url)
    File.open("info.log", "w") { |f| f.write "#{Time.now} - img -Image download started\n" }
    if "#{url}"==""
        puts "fatal Error:No url"
        puts "Download failed"
        File.open("info.log", "w") { |f| f.write "#{Time.now} -img- FATAL:No url\n" }
    elsif "#{url}"==" " 
        puts "fatal Error:No url"
        puts "Download failed"
        File.open("info.log", "w") { |f| f.write "#{Time.now} -Img- FATAL:No url\n" }
    else
        puts "Downloading file from #{url}" 
        Down.download("#{url}", destination: "cups/WithUrl/")
        puts "Download complete"
        File.open("info.log", "w") { |f| f.write "#{Time.now} - img -Image download Complete\n" }

    end
end
def latte--help()
    puts "Latte help sytem"
    puts "To install a image from a url try latte-InstallImage 'url of image' "
    puts "for more help try the docs"
InstallImage ""
