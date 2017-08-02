# The Shelf

#### This is an e-commerce site that allows users to add products to a shopping cart and integrates with the Stripe API to accept payments

## Setup/Installation Requirements

* cd into the project folder on your local machine and then run:
* `bundle install`

### Create Database and Tables
* Make sure postgres is running and then enter the following commands in the terminal:
```
$ rake db:create
$ rake db:migrate db:test:prepare
$ rake db:seed
```

### Run the Program
* Run this command in the terminal to launch the server:
* `rails s`
* Open your browser and enter `localhost:3000` as the URL path.

## Known Bugs

You may need to run the following command if you run into seeding issues with the database:
* `rake db:reset`

## Support and contact details
Please feel free to contact me at jasoncruze@gmail.com

## Technologies Used
* Bootstrap
* Postgres
* Ruby
* Rails
* Stripe API


### License

*This software is licensed under MIT license.*

Copyright (c) 2017 **_Jason Ainsworth and Nick Powell_**
