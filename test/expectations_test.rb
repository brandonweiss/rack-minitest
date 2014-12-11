require File.expand_path("../test_helper", __FILE__)

def stub_app(status_code)
  lambda { |env| [status_code, {}, [""]] }
end

describe Rack::Minitest::Expectations do
  include Rack::Test::Methods
  include Rack::Minitest::Expectations

  it "should have a spec-style matcher for an ok response" do
    def app; stub_app(200); end

    get "/"
    last_response.must_be_ok
  end

  it "should have a spec-style matcher for a created response" do
    def app; stub_app(201); end

    get "/"
    last_response.must_be_created
  end

  it "should have a spec-style matcher for an accepted response" do
    def app; stub_app(202); end

    get "/"
    last_response.must_be_accepted
  end

  it "should have a spec-style matcher for a no content response" do
    def app; stub_app(204); end

    get "/"
    last_response.must_be_no_content
  end

  it "should have a spec-style matcher for a moved permanently response" do
    def app; stub_app(301); end

    get "/"
    last_response.must_be_moved_permanently
  end

  it "should have a spec-style matcher for a bad request response" do
    def app; stub_app(400); end

    get "/"
    last_response.must_be_bad_request
  end

  it "should have a spec-style matcher for an unauthorized response" do
    def app; stub_app(401); end

    get "/"
    last_response.must_be_unauthorized
  end

  it "should have a spec-style matcher for a forbidden response" do
    def app; stub_app(403); end

    get "/"
    last_response.must_be_forbidden
  end

  it "should have a spec-style matcher for a not found response" do
    def app; stub_app(404); end

    get "/"
    last_response.must_be_not_found
  end

 it "should have a spec-style matcher for an unprocessable entity response" do
    def app; stub_app(422); end

    get "/"
    last_response.must_be_unprocessable_entity
  end

 it "should have a spec-style matcher for an internal server error response" do
    def app; stub_app(500); end

    get "/"
    last_response.must_be_internal_server_error
  end

end
