module SimpleMB
  module Model
    class Track < Base
      def title
        @title ||= (@node/"title").inner_html
      end
      
      def duration
        @duration ||= (@node/"duration").inner_html.to_i
      end
    end
  end
end