require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can get current weight" do
    dashboard = Dashboard.new
    assert_equal 150, dashboard.current_weight
  end

  test "can get calories consumed" do
    dashboard = Dashboard.new
    assert_equal 550, dashboard.calories_consumed
  end



end
