## int, asynchronous continuous integration

int is a simple way to ensure your code is always on sync, fully tested
and has full test coverage. All without a different CI machine. This is
meant to run right from the developer's machine.

## Requirements

* OSX and Linux are currently supported.

* [heroku-toolbelt](https://toolbelt.heroku.com/). You can either
install it with `brew install heroku-toolbelt` or use the package
provided for your OS.

* RSpec for testing.

* We use simplecov for code coverage.

## Getting Started

### OSX

Install using brew and follow the instructions that follow.

```
$ brew install https://raw.github.com/Helabs/int/stable/int.rb --HEAD
```


### Linux

Make a `git clone` of int and add the `/bin/int` path on `.bashrc`, like:
```
$ eval "$(/home/your_user/path/to/int/bin/int init -)"
```

## Upgrading
### OSX
You can upgrade by reinstalling it.

```shell
$ brew reinstall int --HEAD
```
### Linux

You can upgrade by doing a `git pull` in int folder. And voilá.

## Usage

* Add your Heroku app to `.rvmrc` using the environment variable `APP`:

```
APP=my_heroku_app
```

* If you always want 100% code coverage, add this on
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

* Finally, integrate your code!

```shell
$ int run
```

You can checkout the list of tasks on the [int-run](libexec/int-run) command.

## Deploying to production

* Add your Heroku production app to `.rvmrc` using the environment variable `PRODUCTION_APP`:

```
PRODUCTION_APP=my_heroku_app
```

* Checkout your production branch, merge anything if necessary:

```shell
$ git checkout -b production
$ git merge master
```

* Finally, integrate to production!

```shell
$ int production
```

You can checkout the list of tasks on the [int-run](libexec/int-production) command.

## Features/Problems

* We only support OSX, even if Linux probably works (pull requests
  welcome);
* We only support RSpec;
* We only support Rails.
* Upgrade currently only works by doing `brew rm int` and reinstalling.
  There is an issue opened at [homebrew](https://github.com/mxcl/homebrew/issues/13197).

## License

int is released under the [MIT License](http://www.opensource.org/licenses/MIT).
