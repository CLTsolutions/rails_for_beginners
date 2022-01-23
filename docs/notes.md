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

# Params

_Refer to registrations_controller.rb_

-  References everything seen inside the parameters in the logs
-  Can come from routes in url (can specify username and grab correct user)
-  If form is submitted, it can grab data from the form and put them into params
-  `params[:user]` gives all params
   -  can dig into params by using `params[:user]`
      &nbsp;

### _What comes back from params_

```ruby
def create
   params
   # Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"test@email.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
   params[:user]
   # Parameters: {"user"=>{"email"=>"test@email.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}}
   @user = User.new(params[:user])
   # Giving hash of params and gives it to User.new
   # The same as User.new({ email: "test@email.com", password: "password" })
   # this is used to make it dynamic
end

```

&nbsp;

### _By itself this is not secure and will need to be private_

```ruby
def create
   @user = User.new(params[:user])
end
```

&nbsp;

## Private

### `user_params` _is a private helper method that specifies what attributes are allowed to be set_

```ruby
def create
   @user = User.new(user_params)
end

private

def user_params
   params.require(:user).permit(:email, :password, :password_confirmation)
end
```

&nbsp;

## Error messages

### `render :new` &nbsp; _renders template for new view (app => views => registration => new.html.erb)_

```ruby
def create
   @user = User.new(user_params)
   if @user.save
      redirect_to root_path, notice: 'Successfully created account.'
   else
      render :new
   end
end
```
