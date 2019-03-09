class Api::V1::DraftController < ApplicationController
  def generate_packs
    cards = []

    amount_of_packs = (params[:amount] || 1).to_i
    card_set = params[:set] || 1

    amount_of_packs.times do
      is_hero_pack = Random.rand(8) == 0
      pack = []
      pack << Card.includes(:card_rarity)
                  .from_booster
                  .set(card_set)
                  .where(
                    card_rarities: {
                      name: Random.rand(8) == 0 ? "Ультраредкая" : "Редкая"
                    }
                  )
                  .order('RANDOM()')
                  .first
                  .json_for_api
      pack = pack + Card.includes(:card_rarity)
                        .from_booster
                        .set(card_set)
                        .uncommon
                        .order('RANDOM()')
                        .first(3)
                        .map(&:json_for_api)
      pack = pack + Card.includes(:card_rarity)
                        .from_booster
                        .set(card_set)
                        .common
                        .order('RANDOM()')
                        .first(is_hero_pack ? 10 : 11)
                        .map(&:json_for_api)
      pack << Card.includes(:card_type)
                  .from_booster
                  .set(card_set)
                  .where(card_types: { name: 'Герой'} )
                  .order('RANDOM()')
                  .first
                  # .json_for_api
      cards << pack
    end

    render json: cards, status: 200
  end
end
