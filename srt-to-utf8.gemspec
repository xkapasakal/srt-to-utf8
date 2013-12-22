Gem::Specification.new do |s|
  s.name        = 'srt-to-utf8'
  s.version     = '0.0.1'
  s.date        = '2013-12-22'
  s.summary     = "Transform srt files to utf-8 encoding"
  s.description = "Transform srt files to utf-8 encoding"
  s.authors     = ["Christos Kapasakalidis"]
  s.email       = 'xkapasakal@gmail.com'
  s.files       = ["lib/srt-to-utf8.rb"]
  s.homepage    = 'http://rubygems.org/gems/srt-to-utf8'
  s.license     = 'MIT'
  s.executables = 'srt-to-utf8'


  s.add_dependency  "rchardet19"    , "~> 1.3.5"
  s.add_dependency  "term-ansicolor", "~> 1.2.2"
end