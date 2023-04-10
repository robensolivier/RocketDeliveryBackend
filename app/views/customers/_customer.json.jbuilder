json.extract! customer, :id, :user_id, :address_id, :phone, :email, :active, :boolan, :created_at, :updated_at
json.url customer_url(customer, format: :json)
