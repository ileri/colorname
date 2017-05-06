# Colorname

[![Build Status](https://travis-ci.com/celilileri/colorname.svg?token=qSHr3MpL5P1vaDoy2yPE&branch=master)](https://travis-ci.com/celilileri/colorname)

Ruby Gem for decide name of a given color.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'colorname'
```

And then execute:
```
$ bundle
```
Or install it yourself as:
```
$ gem install colorname
```
## Usage

```ruby
color_code = Color::RGB.new(0,0,0)
color_name = Colorname.find(color_code)
puts color_name # black
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/celilileri/colorname. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

