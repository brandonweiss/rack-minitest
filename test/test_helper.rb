require "rubygems"
require "bundler"
Bundler.require :default

require "rack/test"
require "minitest/autorun"

require "json"
require "rack-minitest/assertions"
require "rack-minitest/expectations"
require "rack-minitest/spec"
