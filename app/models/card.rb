class Card < ApplicationRecord
	belongs_to :card_set
	belongs_to :card_type
 	belongs_to :card_rarity
	has_and_belongs_to_many :factions
	has_and_belongs_to_many :card_classes
	# has_and_belongs_to_many :classes, class_name: 'CardClass'
	# after_initialize :init

	# def init
	# 	self.restricted_card = true if self.restricted_card.nil?
	# end
end
