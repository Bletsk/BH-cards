# frozen_string_literal: true

require 'http'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :detect_device_variant

  private

  def detect_device_variant
    request.variant = %i[phone tablet] if browser.device.mobile? || browser.device.tablet?
  end
end
