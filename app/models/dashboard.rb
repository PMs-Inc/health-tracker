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
    meal = Meal.group(:date_id).sum(:calories)[@date]
  end

  def calories_burned
    exercises = Exercise.where(date_id: @date).group(:exercise_type_id).sum(:duration)
    exercise_types = ExerciseType.select {|t| exercises[t.id]}
    total = exercise_types.reduce(0) {|sum, t| sum + (exercises[t.id] * t.calories_per_min) }
  end

  def net_calories
    (calories_consumed || 0) - (calories_burned || 0)
  end

  def total_exercise_time
    Exercise.where(date_id: @date).sum(:duration)
  end

  def avg_calories_burned
    (calories_burned / total_exercise_time).round(2)
  end

  def weight_delta
    number = Weight.order(:date_id).count
    delta_percent = ((Weight.order(:date_id)[number-1].weight - Weight.order(:date_id)[number-2].weight) / Weight.order(:date_id)[number-1].weight).round(3)
    delta_pounds = Weight.order(:date_id)[number-1].weight - Weight.order(:date_id)[number-2].weight
    {percent: delta_percent, pounds: delta_pounds}
  end

  def most_caloric_meal
    meal = Meal.where(date_id: @date).order(:calories).last
    {description: meal.description, calories: meal.calories}
  end
end
