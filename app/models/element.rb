# frozen_string_literal: true

class Element < ApplicationRecord
  has_and_belongs_to_many :cards
end
