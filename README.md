# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# README

Ruby Version 6.0.0
Rails Version 7.0.0

## Description


## Installation
To use this app, clone this repository, change directories into /danc_showtime. Run `rails db:create`, `rails db:migrate`, and then `rails s`. Then navigate to localhost:3000.
## Use
Once you navigate to localhost:3000, you should see a home page that displays dance performances if they exist. In the nav bar you will see links to signup or login. From the login page you can login traditionally or with Google.
A rough breakdown of the workflow can be seen below:
- User/Dance Company created an account
- Once logged in the user can add a new performance or edit the performance
- The newly created performance then shows up on their profile page as well as the home page. The user can also see the venues associated with their show on their profile page.
- A person does not have to have an account to view dance performances, just to add or edit one.
- Visitors to the site can click on a performance to get more detailed information. They can also click on the venue to see other shows at that venue.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/ecurryelrod/Dance-Showtime. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Further Information:

Project demo:
[Video Walkthrough](https://www.youtube.com/watch?v=7XDrUUqYZG4&t=5s)

[Associated Blog](https://medium.com/p/11dd17b029ca/edit)