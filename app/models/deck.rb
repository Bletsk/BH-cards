# frozen_string_literal: true

class Deck < ApplicationRecord
  has_many :deck_cards
end
