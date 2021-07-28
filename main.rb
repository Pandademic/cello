require "down"
def installWithUrl(url)
    File.open("info.log", "w") { |f| f.write "#{Time.now} - img -Image download started\n" }
    puts "Downloading file from #{url}" 
    Down.download("#{url}", destination: "cups/img/")
    puts "Download complete"
    File.open("info.log", "w") { |f| f.write "#{Time.now} - img -Image download Complete\n" }
end
installWithUrl "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225358/Pug-On-White-01.jpg"
