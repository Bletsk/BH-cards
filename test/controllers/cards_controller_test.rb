# frozen_string_literal: true

require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  def setup
    create(:card, rarity: :rare)
    create_list(:card, 3, rarity: :uncommon)
    create_list(:card, 11)
  end

  test 'index method' do
    get draft_path(set_id: 8)
    assert_response :success
  end
end
