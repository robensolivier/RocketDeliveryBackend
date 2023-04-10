json.extract! product_order, :id, :product_id, :order_id, :product_quatity, :product_unit_cost, :created_at, :updated_at
json.url product_order_url(product_order, format: :json)
