require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'noip'

RSpec.configure do |config|
  config.color = true
end

