# ruby-e-com
This app is created as part of the course work "Frameworks for Rapid Application development" course.

## How to run?
- Install ruby >= 3.4.7
- Install rails >= 8.1.1
- Then clone this repo, go inside store folder
- Run `bundle install` to install all gems required for this project
- Run `bin/rails server` to start server
- Visit `http://127.0.0.1:3000`

# To activate rails console
- `bin/rails console`

# Creating tables and running migrations
- `bin/rails generate model Product name:string`
- `bin/rails db:migrate`
