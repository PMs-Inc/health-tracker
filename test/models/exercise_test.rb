require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "can get duration" do
    exercise = Exercise.create!(duration: 15)
    assert_equal 15, exercise.duration
  end

  test "can get exercise type id" do
    #update this to pull the exercise name when that model has been created
    exercise = Exercise.create!(exercise_type_id: 1)
    assert_equal 1, exercise.exercise_type_id
  end




end
