class Address < ApplicationRecord
    has_one :employee
    has_one :user
    has_one :restaurant
end
