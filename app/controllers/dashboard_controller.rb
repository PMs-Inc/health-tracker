class DashboardController < ApplicationController

  def show

    date_int = params[:date].to_i

    @dashboard = Dashboard.new(date_int)
    @exercise = Exercise.new
    @options = ExerciseType.get_options
    @meal = Meal.new
    @weight = Weight.new
    @step = Step.new

    @exercises = Exercise.where(user: current_user).where(date_id: date_int)
    @meals = Meal.where(user: current_user).where(date_id: date_int)
    @weights = Weight.where(user: current_user).where(date_id: date_int)
    @steps = Step.where(user: current_user).where(date_id: date_int)
    @days = Day.get_days

    if date_int == nil or date_int == 0
      @date = Day.where(date: Time.now.to_date).first
    else
      @date = Day.find(date_int).date
    end

    @activities = get_activity_list

    @bmr = @dashboard.calculate_bmr(params[:weight].to_i, params[:height].to_i, params[:age].to_i).round(2)
  end

  private
    def get_activity_list
      a = []
      @exercises.reduce(a){|a, i| a << i}
      @meals.reduce(a){|a, i| a << i}
      @weights.reduce(a){|a, i| a << i}
      @steps.reduce(a){|a, i| a << i}
      a.sort{|a,b| b.created_at <=> a.created_at}
    end

end
