require "down"
def installWithUrl(url)
    File.open("info.log", "w") { |f| f.write "#{Time.now} - img -Image download started\n" }
    if "#{url}"==""
        puts "fatal Error:No url"
        puts "Download failed"
        File.open("info.log", "w") { |f| f.write "#{Time.now} - FATAL:No url\n" }
    elsif "#{url}"==" " 
        puts "fatal Error:No url"
        puts "Download failed"
        File.open("info.log", "w") { |f| f.write "#{Time.now} - FATAL:No url\n" }
    else
        puts "Downloading file from #{url}" 
        Down.download("#{url}", destination: "cups/WithUrl/")
        puts "Download complete"
        File.open("info.log", "w") { |f| f.write "#{Time.now} - img -Image download Complete\n" }

    end
end
installWithUrl ""
