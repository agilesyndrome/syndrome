# Syndrome
Short description and motivation.

## Usage
How to use my plugin.

## What it provides

Features | Description
:--------|:-------------------------
Security | via omniauth-auth0
Configuration | via Figaro
Health Check | Custom Built

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'syndrome'
```

1. Add `mount Syndrome::Engine => "/common"` to `config/routes.rb`
1. Add `helper Syndrome::Engine.helpers` to `app/controllers/application_controller.rb`



Or install it yourself as:
```bash
$ gem install syndrome
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
