# WARNING : RAKE AUTO-GENERATED FILE. DO NOT MANUALLY EDIT!
# RUN : 'rake gem:update_gemspec'

Gem::Specification.new do |s|
  s.date = "Thu Oct 30 11:32:47 -0200 2008"
  s.authors = ["Nando Vieira"]
  s.required_rubygems_version = ">= 0"
  s.version = "0.0.1"
  s.files = ["init.rb",
 "Rakefile",
 "simple-mb.gemspec",
 "README.markdown",
 "lib/base.rb",
 "lib/model.rb",
 "lib/models",
 "lib/models/artist.rb",
 "lib/models/release.rb",
 "lib/models/track.rb",
 "lib/request.rb",
 "lib/simple-mb.rb",
 "lib/simple_mb.rb"]
  s.has_rdoc = false
  s.email = ["fnando.vieira@gmail.com"]
  s.name = "simple-mb"
  s.bindir = "bin"
  s.homepage = "http://github.com/fnando/simple-mb"
  s.summary = "A simple MusicBrainz wrapper"
  s.add_dependency "rubigen", ">= 0"
  s.add_dependency "hpricot", ">= 0"
  s.require_paths = ["lib"]
end