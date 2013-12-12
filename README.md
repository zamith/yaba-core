# Yaba::Core [![Build Status](https://travis-ci.org/zamith/yaba-core.png?branch=master)](https://travis-ci.org/zamith/yaba-core)

This is the core of YABA (Yet Another Blog Application) written from scratch,
and following an hexagonal arch approach.

It has entities which are the core of the app, repositories which work as
adapters for the database, value objects that represent the actual data of the
system and are what is passed around, it will also have use cases (or
interactors).

## Installation

  Add this line to your application's Gemfile:

  gem 'yaba-core'

  And then execute:

  $ bundle

  Or install it yourself as:

  $ gem install yaba-core

## Usage

Choose one of YABA's delivery mechanisms, or write your own.

## Contributing

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request
