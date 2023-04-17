class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable 
  devise  :database_authenticatable, 
          :registerable,
          :recoverable, 
          :rememberable, 
          :validatable

  has_one :employee
  has_one :customer
  has_many :restaurants
  has_one :courier
  validates :name, :password, presence: true

end
  def authenticate(password)
    if BCrypt::Password.new(self.password_digest).is_password?(password)
      return self
    else
      return false
    end
  end
