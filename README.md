# Shortener

A Ruby library used for manufacturing the flic.kr style base58 shortened URLs.

See this blog post [manufacturing flic.kr style photo URLs](https://www.flickr.com/groups/api/discuss/72157616713786392/)

## Installation

Add this line to your application's Gemfile:

    gem 'shortener', :git => 'https://github.com/iaintshine/shortener.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shortener

## Usage

Create an instance of a shortener

```ruby
s = Shortener.new
``` 

### Encoding

```ruby
hash = s.encode 100 # => "2J"
```

### Deconding

```ruby
num = s.decode "2J" # => 100
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/shortener/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
