# frozen_string_literal: true

require 'http'
require 'turbolinks/redirection'

class ApplicationController < ActionController::Base
  include Turbolinks::Redirection
  protect_from_forgery with: :exception

  before_action :detect_device_variant

  private

  def detect_device_variant
    request.variant = %i[phone tablet] if browser.device.mobile? || browser.device.tablet?
  end
end
