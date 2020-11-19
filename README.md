# Card-Keeper

Card Keeper is a simple CMS (Content Management System) to keep track of sport card collections (Basketball cards, Baseball cards, etc.). Users can create and manage their own collections, as well as browse the collections of other users.

This app was created to satisfy the requirements of The Flatiron School's Sinatra Portfolio Project.  This project was focused on creating a CRUD(Create, Review, Update, Destroy) , MVC (Model, View, Controller) application using Sinatra and ActiveRecord. It also showcases the use of user accounts and input validation.

## Installation

First,
```bash
bundle install
```
to install required gems/dependencies.

*To seed the databse with fake test data, copy the contents of "db/test_data.rb", and paste it at the end of the seeds file (db/seeds.rb).  Then proceed with the remaining steps:*

Next run
```bash
rake db:setup
```
to create and setup database.
 
## Usage

To use the app:

run:
```bash
shotgun
```

Next, open your browser and enter

localhost:9393

in the address bar and hit enter.  This should take you to the login/signup page!

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)