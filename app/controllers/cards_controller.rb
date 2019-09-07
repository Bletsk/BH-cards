# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    @cards = init_generator
    @heroes = getHeroes
  end

  def show_cards
    # render json: params[:set]
    set = params[:set]
    @cards = init_generator([set[0].to_i, set[1].to_i, set[2].to_i, set[3].to_i])
    @heroes = getHeroes([set[0].to_i, set[1].to_i, set[2].to_i, set[3].to_i])
  end

  def generate_pack(set_id = 6)
    cards = []
    return cards if set_id == 0

    is_hero_dropped = Random.rand(8) == 0

    card_pull = Card.where('card_set_id = ? AND dropped_from_booster = true', set_id)

    if is_hero_dropped
      hero = card_pull.where("card_type = 'hero'").sample
      cards << hero
    end

    rare = Random.rand(8) == 0 ? card_pull.where(rarity: 'ultra').where.not(card_type: 'hero').sample : card_pull.where(rarity: 'rare').where.not(card_type: 'hero').sample
    cards << rare

    card_pull.where(rarity: 'uncommon').where.not(card_type: 'hero').sample(3).each do |card|
      cards << card
    end

    common = is_hero_dropped ? card_pull.where(rarity: 'common').where.not(card_type: 'hero').sample(10) : card_pull.where(rarity: 'common').where.not(card_type: 'hero').sample(11)
    common.each do |card|
      cards << card
    end

    cards
  end

  def init_generator(set_ids = [6, 6, 6, 6], amountOfPlayers = 8)
    cards = []
    set_ids.each do |set_id|
      _booster = []
      (1..amountOfPlayers).each do |_i|
        _booster << generate_pack(set_id)
      end
      cards << _booster
    end

    cards
  end

  def getHeroes(set_ids = [6, 6, 6, 6])
    setHash = {}
    heroes = []
    set_ids.each do |set_id|
      setHash[set_id] = true
    end
    heroes_pull = []

    setHash.each do |key, value|
      heroes_pull << Card.where("card_set_id = ? AND card_type = 'hero'", key)
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