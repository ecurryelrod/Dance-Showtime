class Category < ApplicationRecord
    has_many :performance_categories
    has_many :performances, through: :performance_categories
end
