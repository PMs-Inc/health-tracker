class Dashboard
  def initialize(date)
    @exercises = Exercise.all
    @meals = Meal.all
    @steps = Step.all
    @weight = Weight.all
    @date = date
  end

  def records_exist?(record_class)
    !record_class.where(date_id: @date).empty?
  end

  def show_weight_data
    Weight.count > 0 
  end

  def show_meal_data
    records_exist?(Meal)
  end

  def show_exercise_data
    records_exist?(Exercise)
  end

  def show_step_data
    records_exist?(Step)
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

end
