# frozen_string_literal: true

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test 'should generate proper pack' do
    cards = Card.generate_pack
    assert 15, cards.count
    assert 3, cards.where(rarity: :uncommon).count
  end
end
