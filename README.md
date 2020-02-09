# groundwork-style

Shared style configs for rubocop.

## Installation

Add this to your application's Gemfile:

```ruby
group :development, :test do
  gem 'groundwork-style', github: 'buildgroundwork/groundwork-style', require: false
end
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  groundwork-style:
    - rubocop.yml
    - rubocop_rails.yml
    - rubocop_rspec.yml
```

You do not need to include rubocop directly in your application's dependencies (unless you're using an unpublished version of rubocop).

This will include the `rubocop`, `rubocop-rails`, and `rubocop-rspec` gems.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Groundwork::Style project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/groundwork-style/blob/master/CODE_OF_CONDUCT.md).

