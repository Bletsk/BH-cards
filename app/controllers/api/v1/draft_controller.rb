class Api::V1::DraftController < ApplicationController
  def generate_packs
    cards = []

    amount_of_packs = (params[:amount] || 1).to_i
    card_pool = Card.includes(:card_rarity, :card_classes, :card_type, :card_set, :factions)
                    .from_booster
                    .set(params[:set] || 1)

    amount_of_packs.times do
      is_hero_pack = Random.rand(8) == 0
      pack = []
      pack << card_pool.where(card_rarities: {
                          name: Random.rand(8) == 0 ? "Ультраредкая" : "Редкая"
                       })
                       .order('RANDOM()')
                       .first
                       .json_for_api
      pack = pack + card_pool.uncommon
                             .order('RANDOM()')
                             .first(3)
                             .map(&:json_for_api)
      pack = pack + card_pool.common
                             .order('RANDOM()')
                             .first(is_hero_pack ? 10 : 11)
                             .map(&:json_for_api)
      pack << card_pool.where(card_types: { name: 'Герой'} )
                       .order('RANDOM()')
                       .first
                       # .json_for_api
      cards << pack
    end

    render json: cards, status: 200
  end
end
