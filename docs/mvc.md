# The Model View Controller (MVC) Pattern

_Rails uses the MVC pattern._

This is how Rails decides:

1. How to process req's
2. Where to find info in the db
3. How to render res's

### GET for "/about"

_When a req comes in:_

```ruby
GET /about HTTP/1.1
Host: 127.0.0.1
```

This tells Rails there is a `GET` req for the `/about` route

## Routes

**_Matchers for the URL that is requested._**

_Routes in Rails app are saying, "here's your URL. Let's give this to a controller to decide how to process that."_

> I see you requested "/about", we'll give that to the AboutController to handle.

## Models

**_Database wrapper._**

_Interacting with database records and tables together._

User model:

1. Query for records
   - i.e Let's find all users who logged in within the last 24 hours
2. Wrap individual records (validation)
   - i.e., username must be certain length

## Views

**_Your response body content such as:_**

> HTML

> CSV

> PDF

> XML

This is what gets sent back to the browser and displayed.

## Controllers

**_Decide how to process a request and define a response (where things go)._**

- Homepage, dashboard, etc
- High level logic of what should happen if things are requested.

## High Level Example

### Loading User's Twitter Profile

1. Route says to specific controller, "hey we're looking for @GoRails."
2. Controller says "Go find @GoRails in the database"
   - If you find it, render out HTML (view) for their profile.
   - If don't find, redirect to homepage and give them an error.
3. Up to controller what gets loaded from DB and how it's rendered out in view.
   - The controller controls how the request is handled.

### HTTP

_Routes crucial because of HTTP_

1. Browser says 'do this thing'
2. Routes say 'looks good, let's give this to this specific controller'
