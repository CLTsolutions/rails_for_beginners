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
