require "rack-minitest/expectations"
require "rack-minitest/json"

class Minitest::Spec
  include Rack::Test::Methods
  include Rack::Minitest::Expectations
  include Rack::Minitest::JSON
end
