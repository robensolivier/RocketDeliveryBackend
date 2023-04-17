class Customer < ApplicationRecord
    validates_uniqueness_of :user_id
    validates :phone, :address_id, :active, :user_id, presence: true
    belongs_to :address
    belongs_to :user
    has_many :orders

end
