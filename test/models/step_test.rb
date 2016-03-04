require 'test_helper'

class StepTest < ActiveSupport::TestCase

  test "can get step count" do
    step = Step.create!(step_count: 1, date_id: 1)
    assert_equal 1, step.step_count
  end

  test "can get date_id" do
    step = Step.create!(step_count: 2, date_id: 2)
    assert_equal 2, step.date_id
  end



end
