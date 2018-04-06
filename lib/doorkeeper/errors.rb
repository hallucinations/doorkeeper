module Doorkeeper
  module Errors
    class DoorkeeperError < StandardError
      def type
        message
      end
    end

    class InvalidAuthorizationStrategy < DoorkeeperError
      def type
        :unsupported_response_type
      end
    end

    class InvalidTokenReuse < DoorkeeperError
      def type
        :invalid_request
      end
    end

    class InvalidGrantReuse < DoorkeeperError
      def type
        :invalid_grant
      end
    end

    class InvalidTokenStrategy < DoorkeeperError
      def type
        :unsupported_grant_type
      end
    end

    class MissingRequestStrategy < DoorkeeperError
      def type
        :invalid_request
      end
    end

    class InvalidContentType < DoorkeeperError
      def type
        :unsupported_media_type
      end
    end

    UnableToGenerateToken = Class.new(DoorkeeperError)
    TokenGeneratorNotFound = Class.new(DoorkeeperError)
  end
end
