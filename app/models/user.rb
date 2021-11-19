class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true 
    validates :email, presence: true, uniqueness: true
    
    has_many :performances
    has_many :venues, through: :performances
end
