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

end
