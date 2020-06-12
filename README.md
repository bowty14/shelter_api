## Project created on 6/12/20

# Animal shelter api

#### By **Tyler Bowerman**

## Description

This application allows the user create, update, view and delete animals listed in the api.

## Specifications

|   Behavior Description| ROute input                          |        Output Ex.      |
|------------------------|-----------|-------------------------------------------------|
|1.get dogs| localhost:3000/dogs| returns a list of all dogs|
|2.get cats| localhost:3000/dogs|returns a list of all cats|
|3. POST dogs/cats| localhost:3000/dogs or localhost:3000/cats|creates a new cat or dog|
|4. Update dogs/cats| 



## Setup/Installation Requirements
1* _Clone repository from Github: https://github.com/bowty14/shelter_api.git_
* _In the Terminal type : `$ git clone` [https://github.com/bowty14/shelter_api.git]_
* _Navigate to folder by typing  `$ cd shelter_api` in terminal._
* _Open the file up in the code editior of choice_
* _Install all missing dependencies and Gems, then type `bundle install`._
* _You will need to run `bundle install` after each new Gem added to project._
* _Make sure to check which Ruby version you are running by typing `$ ruby -v`_
* _Make sure to check what Postgres version by typing `postgres --version` in terminal._
* _To start the database run `postgres` in the background terminal._
* _In a seperate terminal type `psql`, to start SQL._
* _To run a test using Rspec, type `rpsec` into the root page of the project._
* DATABASE INSTRUCTIONS - from the root directory of this project, run these commands to start new database:
*         `rake db:create`
*         `rake db:migrate`
*        `rake db:test:prepare`

* _To view project in browser type in terminal, `rails s`._
* _Navigate to localhost:3001_
* _[this api is live at](https://damp-waters-16331.herokuapp.com)

## Known Bugs
No known bugs at this time in production. However in testing I am unable to get a integration test for creating a review to pass.

## Support and contact details
_Have a bug or an issue with this application? [Open a new issue](https://github.com/bowty14/shelter_api/issues) here on GitHub.com_

## Technologies Used
* >_Ruby_
* >_ActiveRecord_
* >_Git_
* >_GitHub_
* >_Rspec_
* >_Pry_
* >_Capybara_
* >_postgres_
* >_SASS_
* >_Bootstrap_
* >_Api's_
### License

*This software is licensed under the MIT license* 

Copyright (c) 2020 **Tyler Bowerman**