class Order < ApplicationRecord

    validates :restaurant_rating, :inclusion => { :in => 1..5 }, allow_nil: true
    validates :restaurant_id, :customer_id, :order_status_id, presence: true
    belongs_to :restaurant
    belongs_to :customer
    belongs_to :order_status
    belongs_to :courier, optional: true
    has_many :product_orders
    
end
def self.user_orders(user_type, id)
    # ... your implementation logic here
  end