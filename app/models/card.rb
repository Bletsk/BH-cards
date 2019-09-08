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

  def self.generate_pack(set_id = 1)
    cards = []

    is_hero_dropped = Random.rand(8).zero?
    is_ultra_dropped = Random.rand(8).zero?

    card_pull = Card.where(card_set: set_id, dropped_from_booster: true)

    cards << card_pull.where(cost: nil).order('RANDOM()').first if is_hero_dropped
    cards << card_pull.where(rarity: is_ultra_dropped ? :ultra : :rare)
                      .where.not(cost: nil)
                      .order('RANDOM()')
                      .first
    cards += card_pull.where(rarity: :uncommon).order('RANDOM()').first(3)
    cards += card_pull.where(rarity: :common)
                      .where.not(cost: nil)
                      .order('RANDOM()')
                      .first(is_hero_dropped ? 10 : 11)

    cards
  end

  def self.heroes(set_ids = 1)
    Card.where(card_set: set_ids, cost: nil)
  end
end
