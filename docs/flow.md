# Routes
- Defined in config => routes.rb
- Can change actual URL but leave the name the same so Rails Routes command prints out the same
   - get "about-us", to: "about#index", as: :about

## Root Route
- Will get 404 in prod if root route is not defined.
- "/" is optional ('/about' or 'about')
- Can use word "Root" which is a custom rails helper to do GET in an empty string
   - To find in routes file easier
### Endpoint: /about
-  GET /about and point TO a controller (about controller/index action)

# Controllers
- When inheriting from ApplicationController, getting all functionality Rails has.
-  Defines action and method index
   -  When empty, do rendering otherwise use use Rails default render.
-  Finds < name of route > folder inside views and looks for index file.
   -  .erb allows us to write Ruby code inside of it.

### Action
-  about#index defines action.

# Layout
- Layout is the wrapper for HTML content.
-  Defines things like:
   -  stylesheets, favicons, js
-  Yield is replaced with view.

# application.html.erb File
- stylesheet_link_tag and javascript_pack_tag
   - Loading CSS and JS from Rails application
