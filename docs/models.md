# Model Generator
- Used to create a db table
    - `rails generate model User email:string password_digest:string`
        - User table, email column, and a password column
        - need to make sure passwords are hashed and kept safe
    - `rails db:migrate`
        - to create db table
- Generates a db migration file

## DB Migrations
- db migration file
    - defines new table and changes to it
        - for this project, creating new table and adding email and password digest fields
        - can undo and redo any time we want
        - can add new migration if we wanted to add name to table
- Once in prod, migrations allow us to make changes without losing db info
    - like adding a name column
        - won't lose users (they'll have empty name field)

# User Model
- Wrapper around db
- allows us to query db and see all users we have
    - can look up, create new ones, delete, and update users
- 2 levels to db models
    1. querying table and interacting with all users
    2. instance of User
        single row in db
- template for all users and how to interact with them
- has_secure_password
    - method from Rails
    - uses password digest column in db
    - adds password and password confirmation to our user
    - virtual attributes not saved to db
        - but when password is submitted, runs through bcrypt and password is hashed
- validates
    - `:email`, presence: true checks if email is in db
        - makes sure you have an email address for users
        - can also be done in migration
            -`:email, null: false`
            - the db enforces (not just Ruby code)
    - gives a cleaner error message in the console when added in model