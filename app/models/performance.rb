class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :venue

  # not sure this association working properly. check later
  has_many :performance_categories
  has_many :categories, through: :performance_categories
end
