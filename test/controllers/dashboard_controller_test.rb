require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get proper weight for day" do
    get :show, date: weights(:one).date_id
    assert_response :success
    assert response.body.include?("175")
  end

  test "should get proper meals for day" do
    get :show, date: meals(:three).date_id
    assert_response :success
    assert response.body.include?("Pizza Slice")
  end

  test "should get proper exercises for day" do
    get :show, date: exercises(:five).date_id
    assert_response :success
    assert response.body.include?("10")
  end

  test "should get proper steps for day" do
    get :show, date: steps(:two).date_id
    assert_response :success
    assert response.body.include?("7567")
  end


end
