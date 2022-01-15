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
-  called partial because it's not a full template
-  looks inside app => views => shared => \_< filename >
   -  partial must start with underscore (separates this from regular templates)

# Link To

-  link_to is a ruby helper and takes url we want to point to
   -  can pass in options like class which maps to anchor class it generates
-  content inside anchor => url to link_to => other options
