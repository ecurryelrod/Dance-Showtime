class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :performance_categories
  has_many :categories, through: :performance_categories
  accepts_nested_attributes_for :venue, reject_if: proc {|attr| attr[:name].blank?}

  validates_presence_of :title, :company_name, :start_date, :time, :ticket_price, :description, :ticket_url, :company_url
  validates_format_of :ticket_url, :company_url, :with => URI::regexp(%w(http https))
  validates_numericality_of :ticket_price

  scope :current_or_upcoming_performances, -> { where('start_date >= ?', DateTime.now) }
  scope :past_performances, -> { where('start_date < ?', DateTime.now) }
  scope :ordered_by_date, -> { order('start_date') }
end
