class Card < ApplicationRecord
	belongs_to :card_set
	# after_initialize :init

	# def init
	# 	self.restricted_card = true if self.restricted_card.nil?
	# end
end
