class User < ApplicationRecord
    has_secure_password
    # validates :name, :email, presence: true
    validates_presence_of :name, :email
    # validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :email

    has_many :performances
    has_many :venues, through: :performances
end
