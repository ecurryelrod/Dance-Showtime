class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  accepts_nested_attributes_for :venue, reject_if: proc {|attr| attr[:name].blank?}

  # not sure this association working properly. check later
  has_many :performance_categories
  has_many :categories, through: :performance_categories

  # def venue_attributes=(attribute)
  #   self.venue = Venue.find_or_create_by(name: attribute[:name]) if !attribute[:name].blank?
  # end
end
