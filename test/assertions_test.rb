require File.expand_path("../test_helper", __FILE__)

def stub_app(status_code)
  lambda { |env| [status_code, {}, [""]] }
end

describe Rack::Minitest::Assertions do
  include Rack::Test::Methods
  include Rack::Minitest::Assertions

  it "should have an assertion for an ok response" do
    def app; stub_app(200); end

    get "/"
    assert_ok(last_response)
  end

  it "should have an assertion for a created response" do
    def app; stub_app(201); end

    get "/"
    assert_created(last_response)
  end

  it "should have an assertion for an accepted response" do
    def app; stub_app(202); end

    get "/"
    assert_accepted(last_response)
  end

  it "should have an assertion for a no content response" do
    def app; stub_app(204); end

    get "/"
    assert_no_content(last_response)
  end

  it "should have an assertion for a moved permanently response" do
    def app; stub_app(301); end

    get "/"
    assert_moved_permanently(last_response)
  end

  it "should have an assertion for a bad request response" do
    def app; stub_app(400); end

    get "/"
    assert_bad_request(last_response)
  end

  it "should have an assertion for an unauthorized response" do
    def app; stub_app(401); end

    get "/"
    assert_unauthorized(last_response)
  end

  it "should have an assertion for a forbidden response" do
    def app; stub_app(403); end

    get "/"
    assert_forbidden(last_response)
  end

  it "should have an assertion for a not found response" do
    def app; stub_app(404); end

    get "/"
    assert_not_found(last_response)
  end

 it "should have an assertion for an unprocessable entity response" do
    def app; stub_app(422); end

    get "/"
    assert_unprocessable_entity(last_response)
  end

 it "should have an assertion for an internal server error response" do
    def app; stub_app(500); end

    get "/"
    assert_internal_server_error(last_response)
  end

end
