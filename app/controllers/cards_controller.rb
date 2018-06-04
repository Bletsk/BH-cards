class CardsController < ApplicationController
	def index
		is_hero_dropped = Random.rand(8) == 0

		set_id = 1

		card_pull = Card.where("card_set_id = ? AND dropped_from_booster = true", set_id)

		@cards = []

		if is_hero_dropped
			@hero = card_pull.where("card_type = 'hero' AND rarity = 'common'").shuffle.first
			@cards << @hero
		end

		@rare = Random.rand(8) == 0 ? card_pull.where(rarity: "ultra").where.not(card_type: "hero").shuffle.first : card_pull.where(rarity: "rare").where.not(card_type: "hero").shuffle.first
		@cards << @rare

		card_pull.where(rarity: "uncommon").where.not(card_type: "hero").shuffle[0 .. 2].each do |card|
			@cards << card
		end

		common = is_hero_dropped ? card_pull.where(rarity: "common").where.not(card_type: "hero").shuffle[0 .. 9] : card_pull.where(rarity: "common").where.not(card_type: "hero").shuffle[0 .. 10]
		common.each do |card|
			@cards << card
		end

		# render json: @cards

		# render json: card_pull
	end
end
