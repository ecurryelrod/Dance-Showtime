class User < ApplicationRecord
    has_many :performances
    has_many :venues, through: :performances
end
