Dance Performance Listing App

User - As Company (and as commenter maybe???)
- name
- email
- password_digest
- has_many :performances
- has_many :venues, through: :performances
- (as commenter user) has_many :comments

Performance
- title
- dates
- ticket price
- link to purchase tickets
- description
- company website
- covid policy?
- belongs_to :user
- belongs_to :venue
- has_many :categories
- has_many :comments

Venue
- name
- address_1
- address_2
- city
- state
- zip?
- google map link?
- has_many :performances
- has_many :users, through: :performances

Category
- name/type
- dance style included in category type or make column for it in performance table?????
- has_many :performances

Comment???
- content
- belongs_to :user (commenter)
- belongs_to :performance