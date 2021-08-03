require "down"
require "fileutils"
if ARGV.first =="help"
     puts "Latte help sytem"
     puts "To install a image from a url try latte InstallImage 'url of image' "
     puts "for more help try the docs"
elsif ARGV.size <1
     abort("ERROR:No task specified")
end
if ARGV.first== "InstallImg"
     @url=ARGV[1]
     Down.download("#@url", destination: "cups/WithUrl/")

else
    abort("This task does not exist")
end
