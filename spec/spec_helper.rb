# frozen_string_literal: true

require 'jekyll'
require 'liquid'
require File.expand_path('../lib/jekyll-pluralize.rb', File.dirname(__FILE__))

Jekyll.logger.log_level = :error

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

  include Jekyll::Pluralize
end
