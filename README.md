#Overview

This health tracker app allows one user to enter and keep track of various health metrics on a daily basis.

#Data Types

The app is based on [this database structure.](https://www.lucidchart.com/invitations/accept/12cacab4-0435-4724-ac19-8779b7a18e97). The app is set up with a RESTful structure, where users can enter data about Exercises, Steps Taken, Meals (or calories) Consumed, and a daily Weight entry.

This app also includes an exercise types table and a days table, which are stored as seed data and can be added when the database is set up. In a later release, we'll tackle updating the date options on a regular basis so you can use the app continually.

#Getting Set Up

If you'd like to use this tracker app for your own, you can get set up on your local machine or deploy to Heroku. Steps for getting set up:

* Clone the repository
* Run `bundle install`
* Run `bin/rake db:migrate`
* Run `bin/rake db:seed`
* Boot up your server with `bin/rails server`
* Visit the app on `localhost:3000` and begin adding your activities! 
