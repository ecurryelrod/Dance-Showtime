Dance Performance Listing App

User - As Company (and as commenter maybe???)
- name
- email
- password_digest
- (as company) has_many :performances
- has_many :venues, through: :performances
- (as commenter user) has_many :comments
- (as commenter user) has_many :performances, through: :comments

Performance  * join table joining users and venues???
- title
- dates/time
- ticket price
- link to purchase tickets
- description
- company website
- covid policy?
- belongs_to :user
- belongs_to :venue
- has_many :categories
    - dance style (category)
    - family friendly, masks required, other category selections
- has_many :comments
- has_many :commenter_users, through: :comments

Venue
- name
- address_1
- address_2
- city
- state
- zip?
- url
- covid policy here???
- google map link???
- has_many :performances
- has_many :users, through: :performances

Category
- name/title
- has_many :performances

Comment???  * could be join table joining commentors (users) and performances???
- content
- belongs_to :user (commenter)
- belongs_to :performance