# frozen_string_literal: true

class Card < ApplicationRecord
  enum rarity: {
    common: 0,
    uncommon: 1,
    rare: 2,
    ultra: 3
  }

  enum faction: {
    forest: 0,
    dark: 1,
    swamp: 2,
    plain: 3,
    mountain: 4,
    neutral: 5
  }
end
