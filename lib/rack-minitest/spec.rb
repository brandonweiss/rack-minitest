class MiniTest::Spec

  include Rack::Test::Methods

  def last_json_response
    JSON.parse(last_response.body)
  end

  def get_json(path, params = {})
    json_request :get, path, params
  end

  def post_json(path, params = {})
    json_request :post, path, params
  end

  def put_json(path, params = {})
    json_request :put, path, params
  end

  def delete_json(path, params = {})
    json_request :delete, path, params
  end

private

  def json_request(verb, path, params = {})
    send verb, path, params.to_json, "CONTENT_TYPE" => "application/json"
  end

end
