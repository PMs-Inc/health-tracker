class Dashboard
  def initialize(date)
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

  def steps_count
    Step.where(date_id: @date).sum(:step_count)
  end

  def current_weight
    if Weight.count > 1
      Weight.order(:date_id)[1].weight
    else
      Weight.order(:date_id).last.weight
    end
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
    if number > 1
      delta_percent = ((Weight.order(date_id: :desc)[number-2].weight - Weight.order(date_id: :desc)[number-3].weight) / Weight.order(date_id: :desc)[number-2].weight).round(3)
      delta_pounds = Weight.order(date_id: :desc)[number-2].weight - Weight.order(date_id: :desc)[number-3].weight
      {percent: delta_percent, pounds: delta_pounds}
    else
      {percent: 0, pounds: 0}
    end  
  end

  def most_caloric_meal
    meal = Meal.where(date_id: @date).order(:calories).last
    {description: meal.description, calories: meal.calories}
  end

  def calculate_bmr(weight, height, age)
    66 + (6.25 * weight) + (12.7 * height) - (6.76 * age)
  end


end
