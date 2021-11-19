class Venue < ApplicationRecord
    has_many :performances
    has_many :users, through: :performances
end
