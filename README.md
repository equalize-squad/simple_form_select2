# SimpleFormSelect2

`simple_form_select2` is a Ruby gem that enables use of [Select2](https://github.com/select2/select2) with
[SimpleForm](https://github.com/plataformatec/simple_form).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_form_select2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_form_select2

## Usage

Require the Javascript in your `application.js` (or other preferred) file via sprockets:

```javascript
//= require simple_form_select2
```

Optionally import the CSS in your `application.css.scss` (or other preferred) file.  For
sprockets-based apps:

```javascript
//= require simple_form_select2
```

When rendering form via SimpleForm's `simple_form_for` method, supply the new association via the `:as` option along with a `:source` option to specify the data source URL:

```ruby
simple_form_for @comment do |f|
  f.association :user, as: :select2, source: users_path(format: :json), label: :name, value: :id
end
```

You can also render a multiple select2 as follows:

```ruby
simple_form_for @comment do |f|
  f.association :users, as: :select2, source: users_path(format: :json), label: :name, value: :id, multiple: true
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/roalcantara/simple_form_select2. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
