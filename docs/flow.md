# Routes
- Defined in config => routes.rb
### Endpoint: /about

-  GET /about and point TO a controller (about controller/index action)

# Controllers

-  Defines action and method index
   -  Do rendering otherwise use use Rails default render.
-  Finds about folder inside views and looks for index file.
   -  .erb allows us to write Ruby code inside of it.

### Action

-  about#index defines action.

# Layout

-  Defines things like:
   -  stylesheets, favicons, js
-  Yield is replaced with view.
