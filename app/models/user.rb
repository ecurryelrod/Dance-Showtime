class User < ApplicationRecord
    has_secure_password
    
    has_many :performances
    has_many :venues, through: :performances
end
