class DashboardController < ApplicationController
  def show
    @dashboard = Dashboard.new(params[:date].to_i)
    @exercise = Exercise.new
    @options = ExerciseType.get_options
    @meal = Meal.new
    @weight = Weight.new
    @step = Step.new

    @exercises = Exercise.where(date_id: params[:date].to_i)
  end
end
