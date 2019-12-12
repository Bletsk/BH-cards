# frozen_string_literal: true

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  def setup
    create(:card, rarity: :rare)
    create_list(:card, 3, rarity: :uncommon)
    create_list(:card, 11)
  end

  test 'should generate proper pack' do
    cards = Card.generate_pack
    assert 15, cards.count
    assert 3, cards.where(rarity: :uncommon).count
  end
end
