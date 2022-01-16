# Gem File
_similar to npm_
-  Allows you to specify gems and their versions to be used in the app.
   - This is how you can know you're using the right version of rails.

# Bundler
-  Manages gem files
-  Automatically installed with Ruby
-  Bundle Command
   1. Looks for gem files
   2. Reads through them.
   3. Installs correct version for application.

# Partials
-  renders another view inside layout
   - because pasting in Bootstrap Navbar inside application.html.erb is messy
-  called partial because it's not a full template
-  looks inside app => views => shared => \_< filename >
   -  partial must start with underscore (separates this from regular templates)
      - can see which is partial and which is not

# Link To

-  link_to is a ruby helper and takes a name and url we want to point to
   -  can pass in options like class which maps to anchor class it generates
   - Format: content inside anchor, URL want to link to, and then other options
- Add either < prefix >< underscore >path or < prefix >< underscore >url
-  Content inside anchor => url to link_to => other options

# Flash Messages
- Method inherited from ApplicationController
   - feature of Rails controllers and views
- Used like a hash in Ruby
    - give name to key (see main_controller.rb)
        - ":notice" and ":alert" are stored in flash hash object
- Assigned in controller but needs to be printed out so user can see them
- Put them in shared because they're shared across the app
    - Putting them in layout is a single place to keep them
- .now means it will only display on current req
    - not used often, but also not setting flash arbitrarily anyway

# Debugging
- .inspect
    - i.e., If you think something should be printing out, but it's not

# .erb Files
- Do <% %> instead of <%= =%>
    - no equals means we don't want to print the return value in the html
    - want equals when it's printed out