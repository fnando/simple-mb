module SimpleMB
  class Base
    def find_artists(name)
      response = SimpleMB::Request.do(:artist, :query => name)
      (response/"artist").collect do |node|
        SimpleMB::Model::Artist.new(node, response)
      end
    end
  end
end