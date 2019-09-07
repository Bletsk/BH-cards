# frozen_string_literal: true

class CardsController < ApplicationController
  def draft
    sets = (1..4).map { |_| params[:set_id].to_i || 1 }
    @cards = init_generator(sets)
    @heroes = get_heroes(sets)
  end

  def show_cards
    set = params[:set]
    @cards = init_generator([set[0].to_i, set[1].to_i, set[2].to_i, set[3].to_i])
    @heroes = get_heroes([set[0].to_i, set[1].to_i, set[2].to_i, set[3].to_i])
  end

  def generate_pack(set_id = 6)
    cards = []
    return cards if set_id.zero?

    is_hero_dropped = Random.rand(8).zero?

    card_pull = Card.where(card_set: set_id, dropped_from_booster: true)

    if is_hero_dropped
      hero = card_pull.where(cost: nil).sample
      cards << hero
    end

    rare = if Random.rand(8).zero?
             card_pull.where(rarity: :ultra).where.not(cost: nil).sample
           else
             card_pull.where(rarity: :rare).where.not(cost: nil).sample
           end
    cards << rare

    card_pull.where(rarity: :uncommon).where.not(cost: nil).sample(3).each do |card|
      cards << card
    end

    common = if is_hero_dropped
               card_pull.where(rarity: :common).where.not(cost: nil).sample(10)
             else
               card_pull.where(rarity: :common).where.not(cost: nil).sample(11)
             end
    common.each do |card|
      cards << card
    end

    cards
  end

  def init_generator(set_ids = [6, 6, 6, 6], amount_of_players = 8)
    cards = []
    set_ids.each do |set_id|
      booster = []
      amount_of_players.times do
        booster << generate_pack(set_id)
      end
      cards << booster
    end

    cards
  end

  def get_heroes(set_ids = [6, 6, 6, 6])
    set_hash = {}
    heroes = []
    set_ids.each do |set_id|
      set_hash[set_id] = true
    end
    heroes_pull = []

    set_hash.each do |key, value|
      heroes_pull << Card.where(card_set: key, cost: nil)
      p key
      p value
    end

    heroes_pull.each do |set|
      set.each do |hero|
        p hero
        heroes << hero
      end
    end

    heroes
  end
end
