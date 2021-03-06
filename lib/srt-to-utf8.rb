#!/usr/bin/env ruby

require 'rchardet19'
require 'term/ansicolor'

class String
  include Term::ANSIColor
end

class Converter

  def convert(file_name)
    file = File.open(file_name, 'rb')
    contents = file.read
    char_detection = CharDet.detect(contents)
    encoding = char_detection['encoding']
    confidence = char_detection['confidence'] # 0.0 <= confidence <= 1.0
    if !(encoding == 'utf-8') and confidence > 0.9
      contents.force_encoding(encoding)
      contents_utf8 = contents.encode('UTF-8')
      f = File.new(file_name, 'w')
      f.write(contents_utf8)
      f.close
      puts "Transformed #{file_name} from encoding #{encoding} to utf-8 with confidence #{confidence}".green
    else
      puts "Didn't transformed #{file_name} with encoding #{encoding} and confidence #{confidence}".red
    end
  end
end
