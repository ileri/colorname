# Colorname

[![Build Status](https://travis-ci.com/ileri/colorname.svg?token=qSHr3MpL5P1vaDoy2yPE&branch=master)](https://travis-ci.com/ileri/colorname)

Ruby Gem for find name of a given color.

## Installation

### Easy Gem Installation

```shell
$ gem install colorname
```
### Gemfile  Integration

Add this line to your application's Gemfile:

```ruby
gem 'colorname'
```

And then execute:
```
$ bundle
```
## Usage

```ruby
Colorname.find 'f0f8ff'                    # [:aliceblue]

Colorname.find '#00ffff'                   # [:aqua, :cyan]

Colorname.find 143, 188, 143               # [:darkseagreen]

Colorname.find Color::RGB.new(255, 0, 255) # [:fuchsia, :magenta]
```

To find names of most dominant colors of an image

```ruby
Colorname.find_by_image (url_or_path)       # [:names_of_most_dominant_colors]

Colorname.findbyimage (url_or_path)         # [:names_of_most_dominant_colors]

```


To find dominant base color name

```ruby
Colorname.base '32cd32'                    # [:green]

Colorname.base '#FF00CC'                   # [:red]

Colorname.base 25, 150, 255                # [:blue]

Colorname.base Color::RGB.new(255, 0, 255) # [:red, :blue]

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ileri/colorname. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Notes

This gem is not for professional usage, written for a spesific project and may not give successful outputs.

If you want to use this gem but need new features, open a new issue. May we add it quickly.

This gem written by Computer Engineeering / IT bacholor degree students. If you want to support financially or grant a scholarship, you can get in touch with [@ileri](https://github.com/ileri)

We always accept constructive criticism.

## Thanks

We love Free Software and Open Source. We have a [Free and Open Source Software (F/OSS) Student Club](http://oyak.omu.edu.tr/) in our university. We owe thanks to this wonderful community.
