Dance Performance Listing App

User - As Company (and as commenter maybe???)
- name
- email
- password_digest
- image (need to add)
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
- address_2 (optional)
- city
- state
- zip
- url
- covid policy here???
- google map link???
- link to venue show page that shows all performancs at selected venue
- has_many :performances
- has_many :users, through: :performances

Category
- name/title
- has_many :performances

Comment???  * could be join table joining commentors (users) and performances???
- content
- belongs_to :user (commenter)
- belongs_to :performance

Home Page
- should have welcome page -> if you are a dance company and would like to list a performance please click here
- To see performances please select a location from the list -> should be able to select a city to see performances (if that city has a performance associated)