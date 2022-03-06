# Model Generator

Used to create a db table

> `rails generate model User email:string password_digest:string`

- Generates a `User` table and email and password column

Need to make sure passwords are hashed and kept safe

> `rails db:migrate`

- Creates a db table

- Generates a db migration file

## DB Migrations

- db migration file
  - Defines new table and changes to it
    - For this project, creating new table and adding email and password digest fields
    - Can undo and redo any time we want
    - Can add new migration if we wanted to add name to table
- Once in prod, migrations allow us to make changes without losing db info
  - Like adding a name column
    - Won't lose users (they'll have empty name field)
> `rails:db:migrate:redo`
- Undo migration and redo the last migration

# User Model

- Wrapper around db
- Allows us to query db and see all users we have
  - can look up, create new ones, delete, and update users
- Template for all users and how to interact with them

## Two levels to db models:

> 1. querying table and interacting with all users
> 2. instance of User (single row in db)

## `has_secure_password`
- Method from Rails
- Uses password digest column in db (we will never interact with password digest directly)
- Adds `password` and `password confirmation` to our user
- Virtual attributes not saved to db
- But when password is submitted, runs through bcrypt and password is hashed

### `validates`
- `validates :email, presence: true` checks if email is in db
- Makes sure you have an email address for users
- Can also be done in migration -`:email, null: false`
- The db enforces (not just Ruby code)
- Gives a cleaner error message in the console when added in model
