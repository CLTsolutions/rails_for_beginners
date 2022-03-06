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

_See `registrations_controller.rb`_

- If instance variable is not used, `user` will be forgotten when garbage collected
  - Local variable `user =` will only available inside method
  - Instance variable `@user` will be visible in views

```ruby
def new
   @user = User.new
   # Create new user in variable (creating instance user)
   # instance variable over regular variable because it will be available for views to access
end
```
> `@user` => available in views

# Form With

`form_with` is a helper
  - Looks for url based upon model
    - Look for url helper inside `routes`
  - Tell it what model to use
  - It gives us a variable called `form`
    - This allows us to print out form text fields

# Cookies

- Can access `cookies[:user_id]`
  - But anyone can access and change their user id

### Have two options:
1.  Session cookies
    - Are encrypted store
2.  Signed cookies

#### Session Cookies

_Signs in user and can be set server side but browsers cannot tamper with_

```ruby
session[:user_id] = @user.id
```

_Finding a user if user is not `nil`_
>
```ruby
  @user = User.find_by(id: session[:user_id]) if session[:user_id]
```
_Can then print out `@user` in view_

# Logging Out

- `button_to` is more semantic
  - req with Hotwire
- `link_to` is was previously used to log out

# Attributes

_See `current.rb` file._

- `Current` is a class used in req's which can be used to assign things like:

  > - User
  >   - Someone not logged in could be `Current.user = nil`
  >   - if logged in, `Current.user` will be their user account
  > - Timezone
  > - Account they're on
- Keeps everything separated
- Allows us to define things shared throughout application

# Before Action
_Before you run any action (like methods in controllers), do xyz_

_See `application_controller`_
> `before_action` calls set_current_user

- `before_action` looks to see if it renders and sends it right back to browser
  - Won't run other methods to prevent multiple renders
  - Can only choose one response to send back
