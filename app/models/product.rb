class Product < ApplicationRecord
    belongs_to :restaurants, class_name: 'Restaurant', foreign_key: 'restaurant_id'

    has_many :product_orders
end
