class CardsController < ApplicationController
	def index
		@cards = []
		@cards << Card.joins(:card_rarity).where(
			card_set_id: 1,
			dropped_from_booster: true,
			card_rarity: CardRarity.find_by(name: Random.rand(8) == 0 ? "ultra" : "rare")
		).shuffle.first
		@cards << Card.where(
			card_set_id: 1,
			dropped_from_booster: true,
			card_rarity: CardRarity.find_by(name: "uncommon")
		).shuffle.first(3)
		@cards << Card.where(
			card_set_id: 1,
			dropped_from_booster: true,
			card_rarity: CardRarity.find_by(name: "common")
		).shuffle.first(11)

		@cards = @cards.flatten
		# for i in 1..4 do
			# @cards = @cards.shuffle.first(15)
		# end
		# render json: @cards
		# @cards = init_generator()
		# @heroes = getHeroes()
		# @kek = 2
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

		card_pull = Card.where("card_set_id = ? AND dropped_from_booster = true", set_id)

		if is_hero_dropped
			hero = card_pull.joins(:card_types).where(:name => "Герой")
			# hero = card_pull.where("card_type.name = 'Герой'").shuffle.first
			cards << hero
		end

		rare = Random.rand(8) == 0 ? card_pull.where(rarity: "ultra").shuffle.first : card_pull.where(rarity: "rare").shuffle.first
		cards << rare

		card_pull.where(rarity: "uncommon").shuffle[0 .. 2].each do |card|
			cards << card
		end

		common = is_hero_dropped ? card_pull.where(rarity: "common").shuffle[0 .. 9] : card_pull.where(rarity: "common").shuffle[0 .. 10]
		common.each do |card|
			cards << card
		end

		return cards
	end

	def init_generator(set_ids = [6, 6, 6, 6], amountOfPlayers = 8)
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

	def getHeroes(set_ids = [6, 6, 6, 6])
		setHash = {}
		heroes = []
		set_ids.each do |set_id|
			setHash[set_id] = true
		end
		heroes_pull = []

		setHash.each do |key, value|
			# heroes_pull << Card.where("card_set_id = ? AND card_type = 'hero'", key)
			p key
			p value
		end

		heroes_pull.each do |set|
			set.each do |hero|
				p hero
				heroes << hero
			end
		end

		return heroes
	end
end
