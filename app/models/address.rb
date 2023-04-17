class Address < ApplicationRecord
    has_many :employees
    has_many :customers
    has_one :restaurant
    has_many :couriers
    validates :street_address, :city, :postal_code, presence: true
end
