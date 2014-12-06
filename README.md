### TheViking 1.0

[Akismet](https://akismet.com/) anti-spam service for Ruby and Rails

====

1. TheViking - **is repack** of [Viking gem](https://github.com/dimelo/viking) without support of Defensio anti-spam service
2. [Viking gem](https://github.com/dimelo/viking) is a fork of [Vikinggem](https://rubygems.org/gems/vikinggem). Bug fix and new feature for this gem should be place here.

### Installation

Add this line to your application's Gemfile:

```ruby
  gem 'the_viking'
```

And then execute:

```sh
  bundle
```

Or install it yourself as:

```sh
gem install the_viking
```

### Usage

```ruby
  @vik = TheViking::Akismet.new(api_key: '1234', blog: 'http://foo.com')
```

### Spam or ham ?

```ruby
  @vik.check_comment(
    user_ip: '111.222.333.444',
    user_agent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:33.0) Gecko/20100101 Firefox/33.0',
    comment_author: 'Spammer Bot',
    comment_author_email: 'spam@spam-server.com',
    comment_content: 'Hello! <a href='http://viagra-for-u.xxx'>I am spammer! Click it!</a>'
  )

  # => true / false
```

#### Additional options

1. referrer
2. comment_author_url
3. permalink - url of commented page
4. comment_type - may be blank, comment, trackback, pingback, or a made up value like

## History

### TheViking 1.0.0

4 dec 2014, repack by github.com/the-teacher

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
