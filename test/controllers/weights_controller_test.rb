require 'test_helper'

class WeightsControllerTest < ActionController::TestCase

  setup do
    @weight = weights(:one)
  end

  # index
  test "can get index" do
    get :index
    assert_response :success
  end

  # show
  test "can get show" do
    get :show, id: @weight.id
    assert_response :success
  end

  # new
  test "can get new" do
    get :new
    assert_response :success
  end

  # create
  test "can get create" do
    assert_difference("Weight.count") do
      post :create, weight: { date_id: 55, weight: 150 }
    end

    assert_redirected_to weight_path(assigns(:weight))
  end

  # destroy
  test "can get destroy" do
    assert_difference("Weight.count", -1) do
      delete :destroy, id: @weight.id
    end

    assert_redirected_to weights_index_path
  end

end
