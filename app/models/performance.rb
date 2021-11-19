class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :performance_categories
  has_many :categories, through: :performance_categories
end
