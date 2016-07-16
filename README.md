# can I make this work with opal and reactrb, that is the question

This repo is based off of the gatsby-starter-blog.

Gatsby is a static site generator that imho, appears to me to be somewhat
analogous to middleman but based upon writing reactjs components for everything
instead of the traditional template/partial model you'd see elsewhere.

My whole goal at this point is to see if I can seamlessly integrate reactrb
components into the project.

If you want to start a new project based off of *my* repo, I believe it would
be: `gatsby new <DIRECTORY_NAME> https://github.com/hayley/hayley.io`

Then probably, you'd want a healthy dose of `bundle` and `npm install` to get
you where you want to be.

`gatsby develop` is how to run the dev server. For some reason, opal will load
okay with this (it seems like it *shouldn't* though), but reactrb will fail to
load.

Running `bundle exec gatsby develop` produces a different error:

```
ERROR in ./~/opal-webpack?file=opal%2Fbase&cacheIdentifier=%7B%22opal-loader%22%3A%221.0.9%22%2C%22opal-compiler%22%3A%220.9.4%22%7D&requirable=true!/Users/hayley/.gem/ruby/2.3.1/gems/opal-0.9.4/opal/opal/base.rb
Module not found: Error: Cannot resolve module 'babel' in /Users/hayley/.gem/ruby/2.3.1/gems/opal-0.9.4/opal/opal
 @ ./~/opal-webpack?file=opal%2Fbase&cacheIdentifier=%7B%22opal-loader%22%3A%221.0.9%22%2C%22opal-compiler%22%3A%220.9.4%22%7D&requirable=true!/Users/hayley/.gem/ruby/2.3.1/gems/opal-0.9.4/opal/opal/base.rb 1:21-101
```

To those familiar with webpack, gatsby does things a little bit differently and
uses https://github.com/lewie9021/webpack-configurator to do webpack config
modifications in a `gatsby-node.js/coffee` file.
