class Dashboard
  def initialize(date)
    @exercises = Exercise.all
    @meals = Meal.all
    @steps = Step.all
    @weight = Weight.all
    @date = date
  end

  def current_weight
    Weight.order(:date_id).last.weight
  end

  def calories_consumed
    #calculates calories consumed for the most recently entered date
    meal = Meal.group(:date_id).sum(:calories)
    calories = meal[@date]
  end

end
