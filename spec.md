# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app:  This is a Sinatra MVC app, all controllers use Sinatra::Base
- [x] Use ActiveRecord for storing information in a database:  Domain models and migrations use                  ActiveRecord::Base and ActiveRecord::Migration, respectively
- [x] Include more than one model class (e.g. User, Post, Category): This app has 8 model classes.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts): A user has_many collections.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User): A collection belongs_to a user.
- [x] Include user accounts with unique login attribute (username or email): Checks username uniqueness against the DB and will not allow signup if taken.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying:  A collection can be created, viewed, edited, and deleted through the 'dashboard' and 'collections' views.
- [x] Ensure that users can't modify content created by other users:  Uses helper methods to ensure user is logged in and is the owner before seeing options to modify content.
- [x] Include user input validations: Used HTML's 'required' attribute where necessary to ensure DB integrity.  Also checks username uniqueness at signup.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new): Uses Flash to display meaningful error messages where applicable.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
