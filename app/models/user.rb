class User < ApplicationRecord
    has_secure_password
    validates :name, :email, presence: true 
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    
    has_many :performances
    has_many :venues, through: :performances
end
