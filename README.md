[![Gem Version](https://badge.fury.io/rb/redash_rb.svg)](https://badge.fury.io/rb/redash_rb)
[![CI](https://github.com/geeknees/redash_rb/actions/workflows/main.yml/badge.svg)](https://github.com/geeknees/redash_rb/actions/workflows/main.yml)
[![codecov](https://codecov.io/gh/geeknees/redash_rb/branch/master/graph/badge.svg?token=1ZHTIP3SG1)](https://codecov.io/gh/geeknees/redash_rb)
[![Maintainability](https://api.codeclimate.com/v1/badges/ecbca1905ee670127346/maintainability)](https://codeclimate.com/github/geeknees/redash_rb/maintainability)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/geeknees/redash_rb)
![GitHub](https://img.shields.io/github/license/geeknees/redash_rb)


# RedashRb

A Ruby client for Redash APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'redash_rb'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install redash_rb

## Usage

#### Configure

```ruby
require 'redash_rb'

Redash.configure do | config |
   config.host = 'https://app.redash.io/<slug>'
   config.api_token = '<api_token>'
end
```

#### API call

```ruby
client = Redash.client
client.get('api/queries')
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/geeknees/redash_rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/geeknees/redash_rb/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RedashRb project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/geeknees/redash_rb/blob/master/CODE_OF_CONDUCT.md).
