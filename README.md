# Watchlist
Ruby Version: 2.1.2

## Project Setup
Very standard setup. This project uses a postgresql database and the rails server, so all that should be necessary for setup is the following

`bundle install`
`bundle exec rake db:create:all`
`bundle exec rake db:migrate`
`bundle exec rake db:seed`
`rails s`

Troubleshooting:

If installing on El Capitan, eventmachine may fail during the bundle install. If so, try this:

`gem install eventmachine -v '1.0.6' -- --with-cppflags=-I/usr/local/opt/openssl/include`


## Project Description
Watchlist is an application intended to allow users to keep a record of TV series they are in the process of watching. The app stores a database of program information including names and descriptions, numbers of parts (generally series/seasons), numbers of episodes within each part, and information about each individual episode such as its title and length. When a user watches a program (clicks the "watch" button on the index), it will be added to their watchlist, where they will be able to track additional information including whether or not an episode/part/program is completed, timestamps for episodes that are partially completed, and personal notes about individual programs/parts/episodes.


## To Do List
Last Updated: 1/14/2017

- Implement devise and user authentication
- Implement ability for an authenticated user to add a program to their watch list
- Flesh out the program models with images and descriptions
- Flesh out the user's marker models to allow for notes and other info
- Overhaul the UI
- Clean up JS and CSS
- Deploy app to Heroku
