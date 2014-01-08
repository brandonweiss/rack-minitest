require "rack-minitest/json"

class Minitest::Spec
  include Rack::Test::Methods
  include Rack::Minitest::JSON
end
