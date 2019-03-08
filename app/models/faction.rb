class Faction < ApplicationRecord
  has_and_belongs_to_many :cards
end
