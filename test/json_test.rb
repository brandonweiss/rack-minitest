require File.expand_path("../test_helper", __FILE__)

describe Minitest::Spec do

  def app
    json = { "foo" => "bar" }.to_json
    lambda { |env| [200, { "Content-Type" => "text/html" }, [json]] }
  end

  it "should include Rack::Minitest::JSON" do
    assert Minitest::Spec.include? Rack::Minitest::JSON
  end

  it "should parse JSON responses" do
    get "/"
    last_json_response.must_equal({ "foo" => "bar" })
  end

  it "should get as JSON" do
    get_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

  it "should post as JSON" do
    post_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

  it "should put as JSON" do
    put_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

  it "should delete as JSON" do
    delete_json "/"
    assert_equal "application/json", last_request.env["CONTENT_TYPE"]
  end

end
