class DashboardController < ApplicationController
  def show

    date_int = params[:date].to_i

    @dashboard = Dashboard.new(date_int)
    @exercise = Exercise.new
    @options = ExerciseType.get_options
    @meal = Meal.new
    @weight = Weight.new
    @step = Step.new

    @exercises = Exercise.where(date_id: date_int)
    @meals = Meal.where(date_id: date_int)
    @weights = Weight.where(date_id: date_int)
    @steps = Step.where(date_id: date_int)
    @days = Day.get_days

  end
end
