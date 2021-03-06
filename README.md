== README

* Ruby Version: 2.1.2


* Project Setup: Very standard setup. This project uses a postgresql database and the foreman server, so all that should be necessary for setup is the following

- bundle install
- bundle exec rake db:create:all
- bundle exec rake db:migrate
- bundle exec rake db:seed
- rails s

Troubleshooting:

If installing on El Capitan, eventmachine may fail during the bundle install. If so, try this:

`gem install eventmachine -v '1.0.6' -- --with-cppflags=-I/usr/local/opt/openssl/include`


* Project Description: Watchlist is an application intended to allow users to keep a database of TV series they are in the process of watching. The app stores a database of program information including names and descriptions, numbers of parts (generally series/seasons), numbers of episodes within each part, and information about each individual episode such as its length. When a user "watches" a program, it will be added to their watchlist, where they will be able to track additional information including whether or not an episode/part/program is completed, timestamps for episodes that are partially completed, and personal notes about individual programs/parts/episodes.


* Current Project Status (updated 3/27/2015): So far, most of what has been built on the back end is the central model structure -- Users, Programs/Parts/Episodes, and ProgramMarkers/PartMarkers/EpisodeMarkers. Most of what has been built of the interface can be found on the users show page. It is currently possible to mark episodes 100% completed or incompleted by clicking the progress bar for each episode, change the timestamp by entering a valid timestamp, percentage, or two-digit number (for times less than a minute) into the editable content feild next to the real input feild (which will eventually be hidden) and pressing enter or clicking "save." There is also some functional javascript/ajax to open and close accordions and update certain timestamp indicators and status bars when values are changed.