# README

This is work-in-progress solution to a Silvercat coding excercise.

Bamboo have decided to open an online bank, Bambank, with its own currency, Bambeuros.
The new bank will run a promotion giving all new customers 100 free Bambeuros when they
sign up.

Create a prototype web application that allows users to:
- Create an account / log in
- View their current balance and transactions
- Send Bambeuros to other users

## Implemented from exercise so far

 - Rails 7 server, with postgres database
 - Devise for user registration and site authentication
 - Data model to represent users, accounts and transactions
 - Basic scaffolds as starting point for controllers and views

## Implemented, but not part of the exercise

 - Rubocop, clean code without offences
 - UUIDs for primary keys

## Still to do

 - Security for user access to controller and data model
 - Any UI at all
 - Business logic for sign up
 - Automated tests
 - Documentation and use instructions
