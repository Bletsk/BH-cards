class Card < ApplicationRecord
	belongs_to :card_set
	belongs_to :card_type
 	belongs_to :card_rarity
	has_and_belongs_to_many :elements
	has_and_belongs_to_many :card_classes
	# after_initialize :init

	# def init
	# 	self.restricted_card = true if self.restricted_card.nil?
	# end
end
