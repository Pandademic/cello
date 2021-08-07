# frozen_string_literal: true

Bundler.require(:default)
abort('ERROR:No task specified') while ARGV.empty?
module Core
  module Helper
    def Core.helper.help
      puts 'Latte help sytem'
      puts "To install a image from a url try latte InstallImage 'url of image' "
    end
  end
  module Image
    def Core.Image.main(url)
      @url = url
      if @url.to_s == ''
        abort('This URL is non-existent')
      else
        File.open('info.log', 'w') { |f| f.write "#{Time.now} - img -Image download started\n" }
        Down.download(@url.to_s, destination: 'cups/WithUrl/')
      end
    end
  end
  module pkg
    def Core.pkg.find(query)
      $query=query
      $destination="https://github.com/Pandademic/Latte/packages/#$query.ini"
      $File=IniFile.load("#$destination")
      $data=File["package"]
      $source=data["Source"]
      Core.Debug.find()
      #download($source)
    end
  end
  module Debug
    def find()
      puts "query: #$query"
      puts "destination:#$destination"
      puts "sourceUrl:#$source"
    end
  end
end

FileUtils.touch('info.log')
when ARGV.first == 'help'
  Core.Helper.help
when ARGV.first == 'InstallImg'
  Core.Image.main(ARGV[1])

