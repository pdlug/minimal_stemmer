
require 'bundler/setup'
require 'rspec/core'

$LOAD_PATH.push File.expand_path('../lib', File.dirname(__FILE__))

require 'minimal_stemmer'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
