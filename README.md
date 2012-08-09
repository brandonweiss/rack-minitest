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
last_response.must_be_unauthorized
last_response.must_be_not_found
```

## Installation

Add this line to your application's Gemfile:

    gem "rack-minitest", git: "git://github.com/brandonweiss/rack-minitest.git"

And then execute:

    $ bundle

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
