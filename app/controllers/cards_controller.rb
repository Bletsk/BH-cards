# frozen_string_literal: true

class CardsController < ApplicationController
  def draft
    sets = (1..4).map { |_| params[:set_id].to_i || 1 }
    @cards = init_generator(sets)
    @heroes = Card.heroes(sets.uniq)
  end

  def show_cards
    set = params[:set].map(&:to_i)
    @cards = init_generator(set)
    @heroes = Card.heroes(set.uniq)
  end

  def init_generator(set_ids = [1, 1, 1, 1], amount_of_players = 8)
    set_ids.each_with_object([]) do |set_id, cards|
      cards << (1..amount_of_players).map { |_| Card.generate_pack(set_id) }
    end
  end
end
