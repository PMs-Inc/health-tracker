# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ExerciseType.create(name: "Walking", calories_per_min: 7)
ExerciseType.create(name: "Weight lifting", calories_per_min: 7)
ExerciseType.create(name: "Swimming", calories_per_min: 12)
ExerciseType.create(name: "Running", calories_per_min: 20)
ExerciseType.create(name: "Rowing", calories_per_min: 9)
ExerciseType.create(name: "Jog/walk combo", calories_per_min: 7)
ExerciseType.create(name: "Dancing", calories_per_min: 9)
ExerciseType.create(name: "Calisthenics", calories_per_min: 10)
ExerciseType.create(name: "Bicycling", calories_per_min: 7)

15.times do |i|
  Day.create(date: (Time.now + (15-i).day).to_date)
end
15.times do |i|
  Day.create(date: (Time.now - i.day).to_date)
end

Weight.create(weight: 0.0)
