class Api::V1::CardsController < ApplicationController
  def create
  	card = Card.create(sanitizeParams(params))
  	render json: card.jsonForApi, status: 201
  end

  def update
  	card = Card.update(sanitizeParams(prms))
  	render json: card.jsonForApi, status: 200
  end

  def show
  end

  def index
  end

  private

  def sanitizeParams(prms)
  	prms.permit(:id, :title, :image_url, :cost, :attack, :health,
  								:draft_rating, :card_text, :flavour_text,
  								:dropped_from_booster, :artist_id, :card_set_id,
  								:card_type_id, :rarity_id, factions: [],
  								card_classes: [])
  end
end
