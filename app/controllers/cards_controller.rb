class CardsController < ApplicationController
	def index
		@cards = init_generator()
	end

	def show_cards
		set_id = params[:set_id]
		@cards = init_generator([set_id, set_id, set_id, set_id])
	end

	def generate_pack(set_id)
		is_hero_dropped = Random.rand(8) == 0

		card_pull = Card.where("card_set_id = ? AND dropped_from_booster = true", set_id)

		cards = []

		if is_hero_dropped
			hero = card_pull.where("card_type = 'hero' AND rarity = 'common'").shuffle.first
			cards << hero
		end

		rare = Random.rand(8) == 0 ? card_pull.where(rarity: "ultra").where.not(card_type: "hero").shuffle.first : card_pull.where(rarity: "rare").where.not(card_type: "hero").shuffle.first
		cards << rare

		card_pull.where(rarity: "uncommon").where.not(card_type: "hero").shuffle[0 .. 2].each do |card|
			cards << card
		end

		common = is_hero_dropped ? card_pull.where(rarity: "common").where.not(card_type: "hero").shuffle[0 .. 9] : card_pull.where(rarity: "common").where.not(card_type: "hero").shuffle[0 .. 10]
		common.each do |card|
			cards << card
		end

		return cards
	end

	def init_generator(set_ids = [1, 1, 1, 1], amountOfPlayers = 8)
		cards = []
		set_ids.each do |set_id |
			_booster = []
			for i in 1..amountOfPlayers
				_booster << generate_pack(set_id)
			end
			cards << _booster
		end
		
		return cards
	end
end
