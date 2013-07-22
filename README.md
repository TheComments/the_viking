Viking [![Build Status](https://travis-ci.org/dimelo/viking.png?branch=master)](https://travis-ci.org/dimelo/viking) [![Dependency Status](https://gemnasium.com/dimelo/viking.png)](https://gemnasium.com/dimelo/viking)
====

This is a fork of [Vikinggem](https://rubygems.org/gems/vikinggem). Bug fix and
new feature for this gem should be place here.

Viking brings you easy access to the [Akismet](http://akismet.com/), and [Defensio](http://www.defensio.com/) spam protection services, but without the need for you to use Rails. VikingGem is Ruby web framework agnostic.

## Installation

Add this line to your application's Gemfile:

    gem 'viking'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install viking

## Usage

    Viking.connect('akismet', api_key: '1234', blog: 'http://foo.com')

Spam or ham ?

    Viking::Akismet.check_comment(options)

## History

### 1.0.0 2013-03-04

* Recreated new gem using current standards
* Fix some bugs

### 0.0.3 2008-04-25

* Made contents of script/ executable

### 0.0.2 2008-04-22

* Changed Manifest to include spec_helper.rb and website

### 0.0.1 2008-04-22

* Initial release

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
