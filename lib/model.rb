module SimpleMB
  module Model
    class Base
      def initialize(node, doc)
        @node = node
        @doc = doc
      end
    
      def mbid
        @mbid ||= (@node).attributes['id']
      end
      
      def score
        @score ||= (@node).attributes['ext:score'].to_i
      end
    end
  end
end