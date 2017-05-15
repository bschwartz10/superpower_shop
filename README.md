# Little Shop of Orders

![Alt text](./app/assets/images/entrance.png?raw=true "Entrance")

## Overview

* The goal of this project was to use Rails to build an online commerce platform to facilitate online ordering.

* This project was completed as part of the curriculum at the [Turing School of Software & Design](http://turing.io).

### Live Version

You can find a live version of this application on Heroku at: https://superpower-shop.herokuapp.com

### Setup

To set up a local copy of this project, perform the following:

  1. Clone the repository: `git clone https://github.com/bschwartz10/little_shop_of_orders`
  2. `cd` into the project's directory
  3. Run `bundle install`
  4. Run `bundle exec rake db:{create,migrate,seed}` to set up the postgres database and seed it with categories and powers.
  - The seed includes the setup for an admin. To login as an admin, use these credentials - email: admin@example.com, password: password - or change these credentials in your seed file.
  5. Run the application in the dev environment by running `rails s`
  6. Visit `http://localhost:3000/`

### Learning Goals

  * Use TDD to drive all layers of Rails development including unit and integration tests
  * Design a system of models which use one-to-one, one-to-many, and many-to-many relationships
  * Practice mixing HTML, CSS, and templates to create an inviting and usable User Interface
  * Differentiate responsibilities between components of the Rails stack
  * Build a logical user-flow that moves across multiple controllers and models
  * Practice an agile workflow and improve communication skills working within a team

### Features
Our e-commerce platform sells hypothetical superpowers.

#### Visitors
Visitors of the site can [browse superpowers](https://superpower-shop.herokuapp.com/powers) and add them to their [briefcase](https://superpower-shop.herokuapp.com/briefcase).

#### Users
A visitor can become an authenticated user by [creating an account](https://superpower-shop.herokuapp.com/users/new). A user can then [login](https://superpower-shop.herokuapp.com/login) and complete the purchasing process by "buying" the superpowers in their briefcase.

#### Admins
Admins can view each users orders and mark them as "paid" and "completed". They can also see all of the orders in the system and their status(i.e ordered, paid, completed, cancelled).

### Design
We used [Bootstrap](http://getbootstrap.com/) to style our website.

### Test Suite

The test suite tests the application on multiple levels. To run all of the tests, run `rspec` from the terminal in the main directory of the project. The feature tests (integration tests) rely mainly on the [capybara gem](https://github.com/jnicklas/capybara) for navigating the various application views.

### Dependencies

This application depends on many ruby gems, all of which are found in the `Gemfile` and can be installed by running `bundle install` from the terminal in the main directory of the project.

### Project Links
[Little Shop of Orders Github URL](https://github.com/bschwartz10/little_shop_of_orders)

[Little Shop of Orders Project Spec](http://backend.turing.io/module2/projects/little_shop)

### Contributors:
* [Brett Schwartz](https://github.com/bschwartz10/little_shop_of_orders)
* [Victoria Vasys](https://github.com/VictoriaVasys)
* [Ken Lee](https://github.com/wewert)
