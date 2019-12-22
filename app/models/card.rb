# frozen_string_literal: true

class Card < ApplicationRecord
  has_many :decks

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

  def self.generate_pack(card_set_id = 1)
    cards = []

    is_hero_dropped = Random.rand(8).zero?

    card_pull = Card.where(card_set: card_set_id, dropped_from_booster: true)

    # Сеты, начиная с девятого, содержат фольгированную редкую карту
    cards << Card.rare_slot(card_pull) if card_set_id >= 9

    cards << card_pull.where(cost: nil).order('RANDOM()').first if is_hero_dropped
    cards << Card.rare_slot(card_pull)
    cards += card_pull.where(rarity: :uncommon).order('RANDOM()').first(3)

    common_count = 11
    common_count -= 1 if is_hero_dropped
    common_count -= 1 if card_set_id >= 9
    cards += card_pull.where(rarity: :common)
                      .where.not(cost: nil)
                      .order('RANDOM()')
                      .first(common_count)

    cards
  end

  def self.heroes(card_set_ids = 1)
    Card.where(card_set: card_set_ids, cost: nil)
  end

  def self.rare_slot(card_pull)
    ActiveRecord::Base.connection.clear_query_cache
    card_pull.where(rarity: Random.rand(8).zero? ? :ultra : :rare)
             .where.not(cost: nil)
             .order('RANDOM()')
             .first
  end
end
