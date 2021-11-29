class Venue < ApplicationRecord
    has_many :performances
    has_many :users, through: :performances

    validates_presence_of :name, :address_1, :city, :state, :zipcode, :venue_url
    validates_uniqueness_of :name
    validates_format_of :venue_url, :with => URI::regexp(%w(http https)) 
end
