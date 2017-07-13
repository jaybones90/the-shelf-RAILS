# _The Shelf!_

#### _e-commerce products site, Wed July 13, 2017_

#### By _**Nick Powell and Jason Ainsworth**_

## Description

_This is a e-commerce site for a variety of products.

You must create an account to add products to the shopping cart. By default all added accounts on-site do not have admin access.


Users are then able to go to a details page about that product by clicking on the product tile._
* _email: admin@gmail.com_
* _password: password_
## Setup/Installation Requirements

### Access Atom Files

* _Ensure connection to the Internet_
* _On a mac using spotlight search type in terminal_
* _Once in terminal enter the following commands to clone the file to your desktop and open the repository:_
```
$ cd desktop
$ git clone https://github.com/n-powell/the_shelf
$ cd the_shelf
$ bundle install
$ atom .
```
* _This will open all of the files included in the zaps-exports folder including Gemfile, Gemfile.lock, app.rb, README.md, views folder, spec folder, public folder, lib folder_
* _To make changes to the look of the file you will need to access the styles.css file._

### Create Database and Tables
* _In the terminal enter the following commands to start the postgres:_

```
$ postgres
```
* _Open another tab in the terminal enter the following commands to start the databases needed for this program:_

```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
$ rake db:seed
```

### Run the Program

```
$ rails serve
```
* _Open your browser and enter `localhost:3000` as the URL path._

## Known Bugs

_You may need to reset the database if you run into seeding issues._

```

$ rake db:reset
```


## Support and contact details

_Please contact me for details placeholder@nick.com._

## Technologies Used

* HTML
* CSS
* Bootstrap
* Postgres
* Ruby
* Rails
* Stripe API
* Javascript


### License

*This software is licensed under MIT license.*

Copyright (c) 2017 **_Jason Ainsworth and Nick Powell_**
