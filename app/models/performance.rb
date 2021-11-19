class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :categories
end
