require "rack/test"
require "rack-minitest/expectations"
require "rack-minitest/json"

class Minitest::Test
  include Rack::Test::Methods
  include Rack::Minitest::Expectations
  include Rack::Minitest::JSON
end
