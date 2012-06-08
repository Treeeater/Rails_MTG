require 'test_helper'

class MtgCardsControllerTest < ActionController::TestCase
  setup do
    @mtg_card = mtg_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtg_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtg_card" do
    assert_difference('MtgCard.count') do
      post :create, mtg_card: @mtg_card.attributes
    end

    assert_redirected_to mtg_card_path(assigns(:mtg_card))
  end

  test "should show mtg_card" do
    get :show, id: @mtg_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtg_card
    assert_response :success
  end

  test "should update mtg_card" do
    put :update, id: @mtg_card, mtg_card: @mtg_card.attributes
    assert_redirected_to mtg_card_path(assigns(:mtg_card))
  end

  test "should destroy mtg_card" do
    assert_difference('MtgCard.count', -1) do
      delete :destroy, id: @mtg_card
    end

    assert_redirected_to mtg_cards_path
  end
end
