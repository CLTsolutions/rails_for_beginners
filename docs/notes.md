# Gem File

_Similar to npm_

- Allows you to specify gems and their versions to be used in the app.
  - This is how you can know you're using the right version of rails.

# Bundler

- Manages gem files
- Automatically installed with Ruby
- Bundle Command
  1.  Looks for gem files
  2.  Reads through them.
  3.  Installs correct version for application.

# Environments

`rails s`

1. Test
2. Development
3. Production

# Partials

- Renders another view inside layout
  - Because pasting Bootstrap Navbar inside `application.html.erb` is messy
- Called partial because it's not a full template
- Looks inside `app` => `views` => `shared` => `/_<filename>`
  - Partial must start with `_` (separates this from regular templates)
    - Visually different so can see which is partial and which is not

# Link To

- `Link_to` is a ruby helper and takes a name and url we want to point to

## Format

> Content inside anchor => url to `link_to` => other options

- Can pass in options like `class` which maps to anchor class it generates
- Add either `<prefix>_path` or `<prefix>_url`
  - Found in `rails routes`

# Flash Messages

- Method inherited from `ApplicationController`
  - Feature of Rails controllers and views
- Used like a hash in Ruby
  - Give name to key (see `main_controller.rb`)
    - `:notice` and `:alert` are stored in flash hash object
- Assigned in controller but needs to be printed out so user can see them
- Put in `shared` because they're shared across the app
  - Putting them in layout is a single place to keep them
- `.now` means it will only display on current req
  - Not used often, but also not setting flash arbitrarily anyway

# ERB Files

`<% %>` without `=` means we don't want to print the return value in the html

`<%= =%>` use `=` when we want return value printed out

# Instance Variables

_See registrations_controller.rb_

- If instance variable is not used, user will be forgotten when garbage collected

```ruby
def new
   @user = User.new
   # Create new user in variable (creating instance user)
   # instance variable over regular variable because they're available in views
end
```

# Form With

- Helper
- `form_with`
  - Tell it what model to use
  - It gives us a variable called form
    - This allows us to print out form text fields
  - Looks for url based upon model
    - Look for url helper inside routes

# Cookies

- Can access `cookies[:user_id]`
  - But anyone can access and change their user id
- 2 options
  1.  Session cookies
      - Encrypted store
  2.  Signed cookies

# Logging Out

- `button_to` is more semantic
  - req with Hotwire
- `link_to` is how to previously log out

# CurrentAttributes

- Check out `current.rb` file.
- Class used in req's which can be used to assign things like:
  - User
    - Someone not logged in could be `Current.user = nil`
    - if logged in, `Current.user` will be their user account
  - Timezone
  - Account they're on
- Keeps everything separated
- Allows us to define things shared throughout application

# Before Action

- Before you run any action (like methods in controllers), call set_current_user
