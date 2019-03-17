class Card < ApplicationRecord
	belongs_to :artist
	belongs_to :card_set
	belongs_to :card_type
	belongs_to :rarity
	belongs_to :user

  # Формирует json-объект с заданным списком полей
  def jsonForApi
    self.as_json(
      only: %i(id title image_url cost attack health draft_rating
              card_text flavour_text dropped_from_booster artist_id) )
  end
end
