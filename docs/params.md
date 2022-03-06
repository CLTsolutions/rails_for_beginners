# Params

_Refer to registrations_controller.rb_

-  References everything seen inside the parameters in the logs
-  Can come from routes in url (can specify username and grab correct user)
-  If form is submitted, it can grab data from the form and put them into params
-  `params` gives all params
   -  Can dig into params hash by using `params[:user]`
      - Gives all user information (entire object)

> _What does `params` return?_

```ruby
def create
   params
   # Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"test@email.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
   params[:user]
   # Parameters: {"user"=>{"email"=>"test@email.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}}
   @user = User.new(params[:user])
   # Gets hash of params and gives it to User.new
   # The same as User.new({ email: "test@email.com", password: "password" })
   # This is used to make it dynamic
end

```

> _Using `params` like below is not secure (see [Private](#private))_

```ruby
def create
   @user = User.new(params[:user])
end
```

## <a name="private">Private</a>

> `user_params` _is a private helper method specifing what attributes are allowed to be set_

```ruby
def create
   @user = User.new(user_params)
end

private

def user_params
   params.require(:user).permit(:email, :password, :password_confirmation)
end
```

> `params.require(:user)` is the same as `params[:user]` except `require` will raise an error if `user` is not found as a key in the hash


## Error messages

> `render :new`<br/>
> _If `user` save is unsuccessful, render a template for new view_<br/>
> _app => views => registration => new.html.erb_

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

> `@user.errors.full_messages` will give a list of messages to print out
```ruby
  <% if @user.errors.any? %>
    <div class='alert alert-danger'>
      <% @user.errors.full_messages.each do |message| %>
        <div><%= message %></div>
      <% end %>
    </div>
  <% end %>
```
