# Jungle

Jungle is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Jungle was built with users in mind from the main catalog to each products detail page. This project was not just about learning a new language, ecosystem and framework. It was more of a simulation of the real world. 

## Added Feature
- Sold-out badge
- Added categories for products
- Created User and Review model to support multiple features
  - User authentication; hashed password using bcrypt
- Basic http authentication for admins
- Allowed only admins to add products and categories

# Testing
- RSpec
- Capybara
- Poltergeist
- Database_cleaner

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
