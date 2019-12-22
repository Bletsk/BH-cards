require 'test_helper'

class DeckBuilderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deck_builder_index_url
    assert_response :success
  end

end
