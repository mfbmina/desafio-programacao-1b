# README

# System dependencies
* Ruby 2.3.1
* bundler
* sqlite
* gems listed at Gemfile

# How do I run this app?

1. ```git clone git@github.com:mfbmina/desafio-programacao-1b.git```
2. ```cd desafio-programacao-1b.git```
3. ```bundle```
5. ```rails db:create db:migrate```
6. ```rails s```

# How do I run the test suite?

```rspec spec```

# Decisions

1. Use last version of Ruby (2.3.1)
2. Use last version of Rails framework (Rails 5).
3. Use rspec for specs.
4. Use twitter-bootstrap gem for views.
5. Use sidekiq for parsing data from file, because if file has a large amount of data, Rails can give a timeout error. In development and test mode it will run synchronous, but in production it should run asynchronous.
