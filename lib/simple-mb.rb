require "rubygems"
require "hpricot"
require "open-uri"
require "uri"
require "cgi"

%w(base model request models/artist models/release models/track).each do |lib|
  require File.dirname(__FILE__) + "/#{lib}"
end
