module Doorkeeper
  module OAuth
    class InvalidContentTypeResponse < ErrorResponse
      def status
        :unsupported_media_type
      end

      def headers
        super.except 'WWW-Authenticate'
      end
    end
  end
end
