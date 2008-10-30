module SimpleMB
  module Model
    class Release < Base
      TYPES = {
        :official => 'Official',
        :ep => 'EP',
        :compilation => 'Compilation',
        :bootleg => 'Bootleg',
        :album => 'Album',
        :live => 'Live',
        :single => 'Single',
        :soundtrack => 'Soundtrack',
        :interview => 'Interview',
        :remix => 'Remix',
        :other => 'Other',
        :audiobook => 'Audiobook',
        :spokenword => 'Spokenword'
      }
      
      def title
        @title ||= (@node/"title").inner_html
      end
      
      def type
        (@node).attributes["type"].split(" ")
      end
      
      def tracks
        @tracks ||= begin
          response = SimpleMB::Request.do("release/#{mbid}", :inc => 'tracks')
          (response/"track").collect do |node|
            SimpleMB::Model::Track.new(node, response)
          end
        end
      end
    end
  end
end