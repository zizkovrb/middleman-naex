# Middleman-naex

A small project template for [Middleman], the fantastic static site building
tool. Without any front-facing extension, even the blog one. Use for starting
the new site. Add what's necessary later.

Only index shows nice Bourbon [Refills] constructed page. Have something to show
in the couple of minutes.

And yes it is blatantly ripped off fine [middleman-neato] template. Thanks @shkm!

The name is based on czech saying na ex, when you drink beer at once.


## Features

Naex sets you up with the following, straight out of the box:

- [Slim](http://slim-lang.com/) templating
- [Sass](http://sass-lang.com/) support with [Bourbon](http://bourbon.io/),
  [Neat](http://neat.bourbon.io/), [Bitters](http://bitters.bourbon.io) and
  [Refills]
  by [Thoughtbot](http://thoughtbot.com/)
- [Coffee script](http://coffeescript.org) Coffee script instead of plain
  javascript
- A basic page layout & 404 page based on
   [Refills]
- Simple Google Analytics support
- [Livereload](https://github.com/middleman/middleman-livereload)
- CSS & Javascript minification and gzipping on build

Thanks to the brilliance of [Middleman], this should get you up and running on
 new projects pretty darn fast.


## Use

Install [Middleman]:

    gem install middleman


Clone Naex:

    git clone git@github.com:pepe/middleman-naex.git my-project

Install gems and get to work!

    cd my-project
    bundle install
    middleman

Point you browser to [http://localhost:4567](http://localhost:4567) and see the magick.


## Template Install

If you find yourself using naex often, you can install it as a middleman template:

    git clone git@github.com:zizkovrb/middleman-naex.git ~/.middleman/naex

Now you can simply init new projects with the Naex template:

    middleman init -T=naex my-project

Just don't forget to update `~/.middleman/naex` every now and then.

## Thanks

Jamie Schembri @shkm for middleman-neato, which is probably much better for you than this.

## Copyright and licence

Copyright 2014 Josef Pospíšil, under the [MIT licence](LICENSE).

  [middleman]: http://middlemanapp.com/
  [middleman-neato]: http://github.com/shkm/middleman-neato/
  [Refills]: http://refills.bourbon.io/

