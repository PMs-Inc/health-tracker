json.array!(@meals) do |meal|
  json.extract! meal, :id, :calories, :description, :date_id
  json.url meal_url(meal, format: :json)
end
