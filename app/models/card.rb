# frozen_string_literal: true

class Card < ApplicationRecord
  enum rarity: {
    common: 0,
    uncommon: 1,
    rare: 2,
    ultra: 3
  }

  enum card_type: {
    creature: 0,
    spell: 1,
    hero: 2,
    event: 3,
    land: 4,
    weapon: 5,
    armor: 6,
    amulet: 7
  }

  enum card_class: {
    elf: 0
  }

  enum faction: {
    forest: 0
  }
end
