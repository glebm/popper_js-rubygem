# PopperJs

This gem provides [popper.js](https://popper.js.org/) assets as a Ruby gem.

Works with Rails out of the box.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'popper_js', '~> 1.14.5'
```

And then execute:

```bash
bundle
```

## Usage

Require `popper` from your `application.js`:

```js
//= require popper
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you
to experiment.

To update the bundled Popper.js assets to the latest version, run:

```bash
rake update
```

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`, which will create a git tag
for the version, push git commits and tags,
and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub
at https://github.com/glebm/popper_js-rubygem. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to adhere
to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of
the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PopperJs project’s codebases, issue trackers,
chat rooms and mailing lists is expected to follow the [code of conduct].

[code of conduct]: https://github.com/glebm/popper_js-rubygem/blob/master/CODE_OF_CONDUCT.md 
