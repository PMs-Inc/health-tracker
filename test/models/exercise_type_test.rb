require 'test_helper'

class ExcerciseTypeTest < ActiveSupport::TestCase
  test "can get options for select" do
    assert_equal [["Running", 1], ["Swimming", 2], ["Elliptical", 3]], ExerciseType.get_options
  end
end
