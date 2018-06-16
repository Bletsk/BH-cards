class Card < ApplicationRecord
	belongs_to :card_set
	belongs_to :card_type
	has_and_belongs_to_many :elements
	# after_initialize :init

	# def init
	# 	self.restricted_card = true if self.restricted_card.nil?
	# end
end
