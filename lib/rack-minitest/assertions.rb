module MiniTest::Assertions

  def assert_ok(response)
    assert_response_status response, 200
  end

  def assert_created(response)
    assert_response_status response, 201
  end

  def assert_unauthorized(response)
    assert_response_status response, 401
  end

  def assert_not_found(response)
    assert_response_status response, 404
  end

  def assert_unprocessable_entity(response)
    assert_response_status response, 422
  end

  def assert_response_status(response, status)
    assert response.status == status, "Expected response to be a #{status}, but was a #{response.status}"
  end

end

Rack::MockResponse.infect_an_assertion :assert_ok,                   :must_be_ok,                   :only_one_argument
Rack::MockResponse.infect_an_assertion :assert_created,              :must_be_created,              :only_one_argument
Rack::MockResponse.infect_an_assertion :assert_unauthorized,         :must_be_unauthorized,         :only_one_argument
Rack::MockResponse.infect_an_assertion :assert_not_found,            :must_be_not_found,            :only_one_argument
Rack::MockResponse.infect_an_assertion :assert_unprocessable_entity, :must_be_unprocessable_entity, :only_one_argument
