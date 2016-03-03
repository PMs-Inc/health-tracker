json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_type_id, :date_id, :duration
  json.url exercise_url(exercise, format: :json)
end
