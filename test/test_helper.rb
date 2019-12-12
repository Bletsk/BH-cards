# frozen_string_literal: true

require_relative '../config/environment'
require 'rails/test_help'

module TestCase
  class ActiveSupport
    include FactoryBot::Syntax::Methods
    # Setup all fixtures in test/fixtwures/*.yml for all tests in alphabetical order.
    # fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
