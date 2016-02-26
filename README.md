#goo-gl

Really tiny Google Shortener API client in 25 lines of code. 
It depends on 3 libraries, which are usually included with Ruby:
- net/http
- openssl
- json

##Installation

Install the gem:

```ruby
gem install 'goo-gl'
```

Or add goo-gl to your Gemfile:

```ruby
gem 'goo-gl'
```

That's it!

##How to use goo-gl

First get your API key [here](https://developers.google.com/maps/documentation/javascript/get-api-key)

```ruby
googl = GooglApi.new('your-google-api-key')
long_url = 'http://github.com'
short_url = googl.shorten(long_url) 
# => "http://goo.gl/KkZ8"
```

Copyright (c) 2016 Vladislav Zaets, released under the MIT License
