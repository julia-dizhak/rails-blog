# Build a Blog with Rail

Blog build with [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html).


## How to run a blog

Below steps are necessary to get the app up and running locally:

* install all dependencies
* run in console `rails s`
* open `http://localhost:3000/`


## Blog features

*  User can see all article and comments
*  User can create/add a new article with handling form submissions using strong parameters
*  User can add comments for the article
*  Validation present when user post a new article and some fields are required
*  User can delete/destroy an article
*  Authentication implemented with `devise`
```
/users/sign_in
/users/sign_up
/users/edit
```


## Things covered:

* Ruby version
* System dependencies and Configuration
* Database initialization and creation
* ? How to run the test suite
* ? Services (job queues, cache servers, search engines, etc.)
* ? Deployment instructions 


## Blog technical details: Rails

* App has 2 models: Articles and Comments
* Active Record and Active Record Associations
* Rendering partial connection


## Rails style guide

* `bin/rails db:migrate`
* `rails g`
* `rails g devise:install`
* `gem install rubocop`


## Todo

* Add link for all articles
* 