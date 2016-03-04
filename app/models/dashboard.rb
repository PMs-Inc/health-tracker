class Dashboard
  def initialize
    @exercises = Exercise.all
    @meals = Meal.all
    @steps = Step.all
    @weight = Weight.all
  end

  def current_weight
    Weight.order(:date_id).last.weight
  end

  def calories_consumed
    #calculates calories consumed for the most recently entered date
    meal = Meal.group(:date_id).order('date_id DESC').sum(:calories).first[1]
  end

end
