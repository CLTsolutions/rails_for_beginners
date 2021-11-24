# The Model View Controller (MVC) Pattern

_Rails uses the MVC pattern. This is how Rails decides how to process req's, where to find info in the db, and how to render res's._

GET /about HTTP/1.1
Host: 127.0.0.1

## Routes

Matchers for the URL that is requested.

_Routes in Rails app are saying, "here's your URL. Let's give this to a controller to decide how to process that."_

### GET for "/about"

I see you requested "/about", we'll give that to the AboutController to handle.

## Models

Database wrapper.

_Interacting with database records and tables together._

User

-  query for records
-  wrap individual records (validation)

## Views

Your response body content such as:

-  HTML
-  CSV
-  PDF
-  XML

This is what gets sent back to the browser and displayed.

## Controllers

Decide how to process a request and define a response (where things go).
