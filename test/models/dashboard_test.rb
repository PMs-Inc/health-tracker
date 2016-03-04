require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can get current weight" do
    dashboard = Dashboard.new(3)
    assert_equal 150, dashboard.current_weight
  end

  test "can get calories consumed" do
    dashboard = Dashboard.new(3)
    assert_equal 550, dashboard.calories_consumed
  end

  test "can get calories burned" do
    dashboard = Dashboard.new(3)
    assert_equal 105, dashboard.calories_burned
  end

  test "can get net calories" do
    dashboard = Dashboard.new(3)
    assert_equal 445, dashboard.net_calories
  end

  test "can get total exercise duration" do
    dashboard = Dashboard.new(3)
    assert_equal 27, dashboard.total_exercise_time
  end

  test "can get average calories burned" do
    dashboard = Dashboard.new(3)
    assert_equal 3.89, dashboard.avg_calories_burned
  end

  test "can find whether records exist for a day" do
    dashboard = Dashboard.new(3)
    assert dashboard.records_exist?(Meal)
    assert dashboard.records_exist?(Exercise)
    refute dashboard.records_exist?(Step)
  end


end
