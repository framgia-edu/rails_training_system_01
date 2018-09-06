RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'factory_bot_rails'
  require 'support/validation_examples'
  require 'support/association_has_many_examples'
  require 'support/have_db_column'
  require 'support/association_belongs_to_examples'
  require 'support/dependent_examples'
end
