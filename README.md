## int, async continuous integration

## Requirements

* OSX is currently supported. Linux might work, but it's not throughly
  tested.

* [heroku-toolbelt](https://toolbelt.heroku.com/). You can either
install it with `brew install heroku-toolbelt` or use the package
provided for your OS.

* RSpec for testing.

* We use simplecov for code coverage.

## Getting Started

1. Install using brew and follow the instructions that follow.

    brew install https://raw.github.com/Helabs/int/master/int.rb --HEAD

## Usage

1. Add your Heroku app to `.rvmrc` using the environment variable APP:

    APP=my_heroku_app

2. If you always want 100% code coverage, add this on
   top of your spec/spec_helper.rb:

```ruby
if ENV['COVERAGE'] == 'on'
  require 'simplecov'
  SimpleCov.start 'rails' do
    minimum_coverage 100
    add_filter "app/admin/"
  end
end
```

int already sets `COVERAGE` to on when running int spec.

3. Finally, integrate your code!

    int run

You can checkout the list of tasks on the [int-run
command](libexec/int-run) command.

## Features/Problems

* We only support OSX;
* We only support RSpec;
* We only support Rails.

## License

int is released under the [MIT License](http://www.opensource.org/licenses/MIT).
