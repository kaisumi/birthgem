# Birthgem

This module lets you know the birstone(s) for an entered birthday.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'birthgem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install birthgem

## Usage

````
Birthgem.stone('2022-01-18')
# => ['Garnet']

Birthgem.stone(10)
# => ['Opal', 'Tourmaline']

require 'date'
birthday = Date.new(1993, 2, 24)
Birthgem.stone(birthday)
# => ['Amethyst']

````
## Contributing
1. Fork it ( https://github.com/kaisumi/birthgem/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
