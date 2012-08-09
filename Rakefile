require "bundler/gem_tasks"

require "rake/testtask"

task :environment do
  require "./app/environment"
end

Rake::TestTask.new(:test) do |t|
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end

task :default => :test
