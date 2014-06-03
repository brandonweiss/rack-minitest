require "json"

module Rack
  module Minitest
    module JSON
      def last_json_response
        ::JSON.parse(last_response.body)
      end

      def get_json(path, params = {}, headers = {})
        json_request :get, path, params, headers
      end

      def post_json(path, params = {}, headers = {})
        json_request :post, path, params, headers
      end

      def put_json(path, params = {}, headers = {})
        json_request :put, path, params, headers
      end

      def delete_json(path, params = {}, headers = {})
        json_request :delete, path, params, headers
      end

      private

      def json_request(verb, path, params = {}, headers = {})
        send verb, path, params.to_json, headers.merge({ "CONTENT_TYPE" => "application/json" })
      end
    end
  end
end
