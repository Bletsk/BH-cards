class CardsController < ApplicationController
	def index
		is_hero_dropped = Random.rand(20) == 0

		if is_hero_dropped
			@hero = Card.where("card_type = 'hero' AND rarity = 'common'").shuffle.first
		end

		@rare = Random.rand(8) == 0 ? Card.where(rarity: "ultra").where.not(card_type: "hero").shuffle.first : Card.where(rarity: "rare").shuffle.first
		@uncommon = Card.where(rarity: "uncommon").where.not(card_type: "hero").shuffle[0 .. 2]
		@common = is_hero_dropped ? Card.where(rarity: "common").where.not(card_type: "hero").shuffle[0 .. 9] : Card.where(rarity: "common").where.not(card_type: "hero").shuffle[0 .. 10]
	end
end
