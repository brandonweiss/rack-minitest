require File.expand_path("../test_helper", __FILE__)
require "rack-minitest/test"

class TestRackMinitestUnit < Minitest::Test

  def app
    json = { "foo" => "bar" }.to_json
    lambda { |env| [200, { "Content-Type" => "text/html" }, [json]] }
  end

  def test_includes_rack_test_methods
    assert Minitest::Test.include? Rack::Test::Methods
  end

  def test_parses_JSON_responses
    get "/"
    assert_equal({ "foo" => "bar" }, last_json_response)
  end

  def test_get_as_JSON
    get_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

  def test_post_as_JSON
    post_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

  def test_put_as_JSON
    put_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

  def test_delete_as_JSON
    delete_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

end
