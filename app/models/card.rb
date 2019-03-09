class Card < ApplicationRecord
	belongs_to :card_set
	belongs_to :card_type
 	belongs_to :card_rarity
	has_and_belongs_to_many :factions
	has_and_belongs_to_many :card_classes

	scope :set, -> (id) { where(card_set_id: id) }
	scope :common, -> { where(card_rarity_id: 1) }
	scope :uncommon, -> { where(card_rarity_id: 2) }
	scope :rare, -> { where(card_rarity_id: 3) }
	scope :ultra, -> { where(card_rarity_id: 4) }
	scope :from_booster, -> { where(dropped_from_booster: true) }
	# has_and_belongs_to_many :classes, class_name: 'CardClass'
	# after_initialize :init

	# def init
	# 	self.restricted_card = true if self.restricted_card.nil?
	# end

	def json_for_api
		self
				.as_json(
					only: [:id, :name, :card_text, :flavour_text, :card_url, :cost,
								 :attack, :health, :rate],
					include: [:card_set, :card_type, :card_rarity, :factions, :card_classes]
				)
	end
end
