class Category < ApplicationRecord
    # not sure this association working properly. check later
    has_many :performance_categories
    has_many :performances, through: :performance_categories
end
