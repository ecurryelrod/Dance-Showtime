# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship
    - A user has many performances and a Venue has many performances
- [x] Include at least one belongs_to relationship
    - A performance belongs to a user and a venue
- [x] Include at least two has_many through relationships
    - A venue has many users through performances
    - A user has many venues through performances
- [x] Include at least one many-to-many relationship
    - Same as pervious requirement
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user 
    - The new performance form includes this as performances is the join table.
- [x] Include reasonable validations for simple model objects 
    - I have validations for all models
- [x] Include a class level ActiveRecord scope method 
    - Performance and Venue models have scope methods which are called in the controllers and views.
- [x] Include signup 
- [x] Include login 
- [x] Include logout
- [x] Include third party signup/login 
    - User can sign in with Google
- [x] Include nested resource "new" form 
    - I have `/users/:user_id/performances/new`
    - I also have nested show with `/users/:user_id/performances/;id`
    - and nested show with `venues/:venue_id/performances/:id`
- [x] Include form display of validation errors
    - validation errors/messages are displayed for login, signup, logout, new performance, and edit performance.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate