class Customer < ApplicationRecord
    validates_uniqueness_of :user_id
    belongs_to :addresses, class_name: 'Address', foreign_key: 'adress_id'
    belongs_to :users, class_name: 'User', foreign_key: 'user_id'
end
