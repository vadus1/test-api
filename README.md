README
------

This is a tiny RESTful API to index a page's content. "Index the content" means
to parse the page content and store its content - in this case to store the
content that is found inside the tags h1, h2 and h3 and the links .

The API have two endpoints:

1. Receives a url, indexes the content and stores it in the database.
   Content includes only header tags (H1, H2 and H3) and links urls.

  POST /api/v1/pages

2. The other endpoint lists previously stored urls

  GET /api/v1/pages


Dependencies
------------

Before setup the application, you need to install:

- The Ruby language (version 2.3.1)
- The Rails framework (versions 5.0.0.1)
- PostgreSQL (versions 9.6.1)

Check that appropriate versions of Ruby and Rails are installed in your development environment:
`$ ruby -v`
`$ rails -v`

Configuration
-------------

clone this response

`git clone ....`

Switch to the application directory to examine and test what you’ve built.

`$ cd test-api`

Run `bundle install`


Database creation
-----------------

```
# Run create database
rails db:create
```

Database initialization
-----------------------

```
# Run migrations
rails db:migrate
```

Start the Web Server
--------------------

Run the app by entering the command:
```
$ rails server
```

To see your application in action, please refer to API Documentation.

API Documentation
-----------------

Browse docs

```
http://localhost:3000/documentation
```

In form insert this is link
```
http://localhost:3000/api/v1/swagger_doc
```
And click on button Explore

How to run the test suite
-------------------------
Run `rspec .` to run all RSpec tests.

Application on heroku
-----------------

[Check app on heroku](https://api-test-application.herokuapp.com/)
