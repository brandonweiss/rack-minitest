# rack-minitest

`rack-minitest` = `rack-test` + `Minitest`. See what I did there?

This gem adds some convenience methods to `rack-test` and `Minitest` that I found myself duplicating over and over for every application I wrote. It adds a few methods for dealing with JSON to `rack-test`, `Minitest` assertions, and spec-style matchers for checking response status. The specific methods are:

```ruby
# json
last_json_response

get_json    path, params, headers
post_json   path, params, headers
put_json    path, params, headers
delete_json path, params, headers

# assertions
assert_ok
assert_created
assert_accepted
assert_no_content
assert_moved_permanently
assert_bad_request
assert_unauthorized
assert_forbidden
assert_not_found
assert_unprocessable_entity
assert_internal_server_error

# matchers
last_response.must_be_ok
last_response.must_be_created
last_response.must_be_accepted
last_response.must_be_no_content
last_response.must_be_moved_permanently
last_response.must_be_bad_request
last_response.must_be_unauthorized
last_response.must_be_forbidden
last_response.must_be_not_found
last_response.must_be_unprocessable_entity
last_response.must_be_internal_server_error
```

## Requirements

* [json](https://github.com/flori/json)
* [rack-test](https://github.com/brynary/rack-test)
* [minitest](https://github.com/seattlerb/minitest) ~> 5.0

## Installation

Add this line to your application's Gemfile:

    gem "rack-minitest", git: "git://github.com/brandonweiss/rack-minitest.git"

And then execute:

    $ bundle

## Usage

You can use `rack-minitest` in one of two ways.

### Require only the modules you need

```ruby
require "rack-minitest/json"
require "rack-minitest/assertions"

class MyTestClass < Minitest::Test
  include Rack::Test::Methods
  include Rack::Minitest::JSON
  include Rack::Minitest::Assertions

  # use rack/test, the json methods, and assertions
end
```

### All in one

```ruby
require "rack-minitest/test"

describe SomeTestClass do
  # adds rack-test and all the rack-minitest modules
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
