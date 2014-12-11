require "rack-minitest/assertions"

module Rack
  module Minitest
    module Expectations
      include Rack::Minitest::Assertions
    end
  end
end

class Rack::MockResponse
  infect_an_assertion :assert_ok,                    :must_be_ok,                    :only_one_argument
  infect_an_assertion :assert_created,               :must_be_created,               :only_one_argument
  infect_an_assertion :assert_accepted,              :must_be_accepted,              :only_one_argument
  infect_an_assertion :assert_no_content,            :must_be_no_content,            :only_one_argument
  infect_an_assertion :assert_moved_permanently,     :must_be_moved_permanently,     :only_one_argument
  infect_an_assertion :assert_bad_request,           :must_be_bad_request,           :only_one_argument
  infect_an_assertion :assert_unauthorized,          :must_be_unauthorized,          :only_one_argument
  infect_an_assertion :assert_forbidden,             :must_be_forbidden,             :only_one_argument
  infect_an_assertion :assert_not_found,             :must_be_not_found,             :only_one_argument
  infect_an_assertion :assert_unprocessable_entity,  :must_be_unprocessable_entity,  :only_one_argument
  infect_an_assertion :assert_internal_server_error, :must_be_internal_server_error, :only_one_argument
end
