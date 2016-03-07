require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can get current weight" do
    dashboard = Dashboard.new(3)
    assert dashboard.current_weight
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

  test "can decide whether to show meal data" do
    dashboard = Dashboard.new(3)
    assert dashboard.show_meal_data
  end

  test "can decide whether to show exercise data" do
    dashboard = Dashboard.new(3)
    assert dashboard.show_exercise_data
  end

  test "can decide whether to show step data" do
    dashboard = Dashboard.new(3)
    refute dashboard.show_step_data
  end

  test "can get weight delta since last record" do
    dashboard = Dashboard.new(3)
    assert dashboard.weight_delta[:percent]
    assert dashboard.weight_delta[:pounds]
    # assert_equal -0.067, dashboard.weight_delta[:percent]
    # assert_equal -10, dashboard.weight_delta[:pounds]
  end

  test "can get meal with most calories" do
    dashboard = Dashboard.new(3)
    assert_equal "Margarita", dashboard.most_caloric_meal[:description]
    assert_equal 300, dashboard.most_caloric_meal[:calories]
  end

end
