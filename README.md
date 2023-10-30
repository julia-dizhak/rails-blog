# Build a Blog with Rails

Demo Blog build with [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html)
#rails #ruby #rubyonrails #demo #buildblogwithrails2023


## How to run a blog

Below steps are necessary to get the app up and running locally:

* install all dependencies
* run in console `rails s`
* open `http://localhost:3000/`


## Blog features

*  Authentication implemented with `devise`
```
/users/sign_in
/users/sign_up
/users/edit
```
*  User can see all article and comments
*  User can create/add a new article with handling form submissions using strong parameters
*  User can add comments for the article
*  Validation present when user post a new article and some fields are required
*  User can delete/destroy an article
*  A blog article can have various statuses: public, private, archived.



## Blog technical details: Rails

* Creation of the rails skeleton 
* App has 2 models: Articles and Comments
* run migrations
* Active Record and Active Record Associations
* Rendering Partial Collections
* Rendering a Partial Form
* Using Concerns. Concerns are a way to make large controllers/models easier to manage. Concerns are implemented using modules that contain methods representing a well-defined slice of the functionality that a model or controller is responsible for. In other languages, modules are often known as mixins.



## Things covered:

* Ruby version
* System dependencies and Configuration
* Database initialization and creation
* ? How to run the test suite
* ? Services (job queues, cache servers, search engines, etc.)
* ? Deployment instructions 



## Rails style guide

* `bin/rails db:migrate`
* `rails g`
* `rails g devise:install`
* `gem install rubocop`
* `cat db/schema.rb` - check a DB
* `bin/rails db:migrate` - update the database with the generated migration
*  `call in a rails console Article.update_all(status: "public")` - update all articles

## Todo

* Add link for all articles
* Can't add a new article (sth with status?)
* after edit the list is not updated
