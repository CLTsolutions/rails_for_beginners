# Basic commands

### Server

> `rails s`

### Routes
> `rails routes`

### Reload

> `reload!`

# Rollback

## Dropping Tables

- Undo migration and add new line `null:false`
  - okay to edit because migration not pushed to prod yet
  - `rails db:rollback`
  - `rails db:migrate`
  - Can also run `rails db:migrate:redo` (runs rollback and migrate in one command)

# Error Checking

- Tried to add user with no email (req'd)
- `user.errors.any?`
  - true
- `user.errors.first` (grabs first error)
  - lets us know there is no email

# Finding Users

- `User.find` is used when it's known a user exists
  - Throws an error if there is no user
- `User.find_by` does not throw an error when user does not exist.
  - Prevents app from crashing in Prod
    - Treats no user the same as logged out user

# Debugging

> `.inspect`

- prints out value
  - i.e., If you think something should be printing out, but it's not

> `.errors.any?`

- Are there errors?

> `.errors.first`

- Gives first error
