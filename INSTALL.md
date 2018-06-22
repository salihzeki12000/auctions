Room Auctions
=======

A website for Hotel Room Auctions simulation

Try the production version at [http://auctions.microweb10.com](http://auctions.microweb10.com)

### Tecnologies and/or gems used:
* coffescript (JavaScript)
* sorcery
* gon
* pusher
* pusher-fake
* will_paginate

INSTALLATION
------------

### Get the code

    git clone git@github.com:microweb10/auctions.git

### Configure

    cd auctions
    cp config/database.yml.sample config/database.yml
    cp config/application.yml.sample config/application.yml
modify those two last files to match your requeriments

### Install the gems

    bundle install

### Prepare the database

    bundle exec rake db:create
    bundle exec rake db:migrate

### Start the sever

    bin/rails s

open a broswer and access to [http://localhost:3000](http://localhost:3000)

Enjoy!!!

### Testing
For testing we use rspec

    bundle exec rspec

WANT TO CONTRIBUTE?
------------

* Fork the proyect
* Create a new branch
* Make your contribution
* Don't forget to make specs to test the new code
* Send a pull request
