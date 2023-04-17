class Employee < ApplicationRecord
    validates_uniqueness_of :user_id 
    validates :address_id, :user_id, :phone, presence: true
    belongs_to :user
    belongs_to :address
    
    
end
