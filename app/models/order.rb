class Order < ApplicationRecord

    belongs_to :restaurants, class_name: 'Restaurant', foreign_key: 'restaurant_id'
    belongs_to :customers, class_name: 'Customer', foreign_key: 'customer_id'

    has_many :product_orders
    has_one :customer
end
