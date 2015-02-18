json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :phone_number
  json.url restaurant_url(restaurant, format: :json)
end
