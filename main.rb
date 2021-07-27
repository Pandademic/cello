require "down"
def getFile(url)
    puts "Downloading file from #{url}" 
    Down.download("#{url}", destination: "downloads/img/")
end
getFile("https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225358/Pug-On-White-01.jpg")