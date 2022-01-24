# Gem File

_Similar to npm_

-  Allows you to specify gems and their versions to be used in the app.
   -  This is how you can know you're using the right version of rails.

# Bundler

-  Manages gem files
-  Automatically installed with Ruby
-  Bundle Command
   1. Looks for gem files
   2. Reads through them.
   3. Installs correct version for application.

# Partials

-  Renders another view inside layout
   -  Because pasting in Bootstrap Navbar inside application.html.erb is messy
-  Called partial because it's not a full template
-  Looks inside app => views => shared => \_< filename >
   -  Partial must start with underscore (separates this from regular templates)
      -  Can see which is partial and which is not

# Link To

-  Link_to is a ruby helper and takes a name and url we want to point to
   -  Can pass in options like class which maps to anchor class it generates
   -  Format: content inside anchor, URL want to link to, and then other options
-  Add either `<prefix><underscore>path` or `<prefix><underscore>url`
-  Content inside anchor => url to `link_to` => other options

# Flash Messages

-  Method inherited from `ApplicationController`
   -  Feature of Rails controllers and views
-  Used like a hash in Ruby
   -  Give name to key (see main_controller.rb)
      -  `:notice` and `:alert` are stored in flash hash object
-  Assigned in controller but needs to be printed out so user can see them
-  Put them in shared because they're shared across the app
   -  Putting them in layout is a single place to keep them
-  `.now` means it will only display on current req
   -  Not used often, but also not setting flash arbitrarily anyway

# Debugging

-  `.inspect`
   -  i.e., If you think something should be printing out, but it's not

# ERB Files

-  Do `<% %>` instead of `<%= =%>`
   -  No equals means we don't want to print the return value in the html
   -  Want equals when it's printed out

# Instance Variables

_See registrations_controller.rb_

-  If instance variable is not used, user will be forgotten when garbage collected

```ruby
def new
   @user = User.new
   # Create new user in variable (creating instance user)
   # instance variable over regular variable because they're available in views
end
```

# Form With

-  Helper
-  `form_with`
   -  Tell it what model to use
   -  It gives us a variable called form
      -  This allows us to print out form text fields
   -  Looks for url based upon model
      -  Look for url helper inside routes

# Cookies

-  Can access `cookies[:user_id]`
   -  But anyone can access and change their user id
-  2 options
   1. Session cookies
      -  Encrypted store
   2. Signed cookies
