module SimpleMB
  API = "http://musicbrainz.org/ws/1"
  ATTRIBUTES = {
    :artist_id => 'artistid',
    :release => {:type => 'releasetypes'}
  }
  
  class Request
    attr_reader :contents, :url
    
    def self.do(resource, options={})
      request = new(resource, options)
      Hpricot.XML(request.contents)
    end
    
    def initialize(resource, options={})
      @url = "#{API}/#{resource}/?type=xml&#{to_query_string(options)}"
      @contents = open(@url).read
    end
    
    def to_query_string(options)
      options.collect {|name, value| "#{name}=#{CGI.escape(value.to_s)}" } * "&"
    end
  end
end