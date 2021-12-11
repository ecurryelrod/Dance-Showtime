class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  accepts_nested_attributes_for :venue, reject_if: proc {|attr| attr[:name].blank?}

  validates_presence_of :title, :company_name, :start_date, :time, :ticket_price, :description, :ticket_url, :company_url
  validates_format_of :ticket_url, :company_url, :with => URI::regexp(%w(http https))
  validates_numericality_of :ticket_price

  has_many :performance_categories
  has_many :categories, through: :performance_categories

  # def venue_attributes=(attribute)
  #   self.venue = Venue.find_or_create_by(name: attribute[:name]) if !attribute[:name].blank?
  # end

  scope :current_or_upcoming_performances, -> { where('start_date >= ?', DateTime.now) }
  scope :past_performances, -> { where('start_date < ?', DateTime.now) }
  scope :ordered_by_date, -> { order('start_date') }
end
