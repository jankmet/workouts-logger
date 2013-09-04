json.array!(@workout_items) do |workout_item|
  json.extract! workout_item, :workout_id, :count, :day, :month, :year
  json.url workout_item_url(workout_item, format: :json)
end
