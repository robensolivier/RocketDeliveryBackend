class ProductOrder < ApplicationRecord
    validates :product_quantity, :numericality => { greater_than: 0 }
    validates :product_unit_cost, :numericality => { greater_than_or_equal_to: 0 }
    belongs_to :order, class_name: 'Order', foreign_key: 'order_id'
    belongs_to :products, class_name: 'Products', foreign_key:'product_id'
end
