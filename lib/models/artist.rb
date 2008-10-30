module SimpleMB
  module Model
    class Artist < Base
      def name
        @name ||= (@node/"name").inner_html
      end
    
      def sort_name
        @sort_name ||= (@node/"sort-name").inner_html
      end
      
      def releases(*types)
        types = types.collect {|type| SimpleMB::Model::Release::TYPES[type] }
        response = SimpleMB::Request.do(:release, :artistid => mbid, :releasetypes => types.join(' '))
        (response/"release").collect do |node|
          SimpleMB::Model::Release.new(node, response)
        end
      end
    end
  end
end