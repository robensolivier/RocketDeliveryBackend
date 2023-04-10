json.extract! restaurant, :id, :user_id, :address_id, :phone, :email, :price_range, :active, :boolean, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
