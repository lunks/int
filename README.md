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
$ brew install https://raw.github.com/Helabs/int/master/int.rb
```


### Linux

Make a `git clone` of int and add the `/bin/int` path on `.bashrc`, like:
```
$ eval "$(/home/your_user/path/to/int/bin/int init -)"
```

## Upgrading
### OSX
You can upgrade by using brew.

```shell
$ brew upgrade int
```
If you were using a version before `0.0.1`, remove it before installing
this one.

### Linux

You can upgrade by doing a `git pull` in int folder. And voilá.

## Usage

* Run `int setup` into your working directory. Read its contents for
  more info.

* Finally, integrate your code!

```shell
$ int run
```

You can checkout the list of tasks on the [int-run](libexec/int-run) command.

## Deploying to production

* Add your Heroku production app to `.int`:

```yml
production:
  app: my-app-production
```

* Checkout your production branch, merge anything if necessary:

```shell
$ git checkout -b production
$ git merge master
```

* Finally, integrate to production!

```shell
$ int run production
```

## Features/Problems

* We only support OSX, even if Linux probably works (pull requests
  welcome);
* We only support RSpec;
* We only support Rails.

## License

int is released under the [MIT License](http://www.opensource.org/licenses/MIT).
