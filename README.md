# rack-minitest

`rack-minitest` = `rack-test` + `MiniTest`. See what I did there?

This gem adds some convenience methods to `rack-test` and `MiniTest` that I found myself duplicating over and over for every application I wrote. It adds a few methods for dealing with JSON to `rack-test` and `MiniTest` spec-style matchers for checking response status. The specific methods are:

```
last_json_response

get_json    path, params
post_json   path, params
put_json    path, params
delete_json path, params

last_response.must_be_ok
last_response.must_be_created
last_response.must_be_no_content
last_response.must_be_moved_permanently
last_response.must_be_bad_request
last_response.must_be_unauthorized
last_response.must_be_not_found
last_response.must_be_unprocessable_entity
last_response.must_be_internal_server_error
```

**NB**: This is a quick and dirty gem to hack in some functionality that I was surprised to find didn't already exist. There are tests, and they pass, but they're pretty gross. All improvements are welcome.

## Installation

Add this line to your application's Gemfile:

    gem "rack-minitest", git: "git://github.com/brandonweiss/rack-minitest.git"

And then execute:

    $ bundle

## Usage

Just add the appropriate requires _after_ you load `rack-test` and `MiniTest`.

```
require "rack-minitest/assertions"
require "rack-minitest/spec"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
