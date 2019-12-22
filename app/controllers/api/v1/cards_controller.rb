# frozen_string_literal: true

module Api
  module V1
    class CardsController < ApplicationController
      def index
        cards = Card.order(title: :asc).first(20)
        render json: cards
      end
    end
  end
end
