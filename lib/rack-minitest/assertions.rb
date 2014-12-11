module Rack
  module Minitest
    module Assertions

      def assert_ok(response)
        assert_response_status response, 200
      end

      def assert_created(response)
        assert_response_status response, 201
      end

      def assert_accepted(response)
        assert_response_status response, 202
      end

      def assert_no_content(response)
        assert_response_status response, 204
      end

      def assert_moved_permanently(response)
        assert_response_status response, 301
      end

      def assert_bad_request(response)
        assert_response_status response, 400
      end

      def assert_unauthorized(response)
        assert_response_status response, 401
      end

      def assert_forbidden(response)
        assert_response_status response, 403
      end

      def assert_not_found(response)
        assert_response_status response, 404
      end

      def assert_unprocessable_entity(response)
        assert_response_status response, 422
      end

      def assert_internal_server_error(response)
        assert_response_status response, 500
      end

      def assert_response_status(response, status)
        assert response.status == status, "Expected response to be a #{status}, but was a #{response.status}"
      end
    end
  end
end
