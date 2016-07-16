---
title: time for a change... again
# date: "2015-05-28T22:40:32.169Z"
layout: post
path: "/time-for-a-change-again/"
---

## I have tech ADD.

If this blog "sticks", it will be probably the 10th blogging "engine" I've
tried. My never-being-satisfied goes all the way back to some random German
language PHP blog engine I started with way back in the day (I was learning
German back then).

But it's more than just blog engines. I tend to go through cycles where I'm just
sick/bored of my current tools and am looking for the thing that fits me
perfectly. Hell, my combination of [Ruby]/[Middleman] for site building is
probably the longest I've ever stuck to one toolset. And a huge reason for that
was just that it was actually the toolset that really meshed well with the types
of things I liked to work on.

But it's looking more and more like it's time to move on.

## middleman v3 to v4

Frankly, I lost *a lot* of enthusiasm for Middleman in the v3 to v4 upgrade. I
wouldn't even bother upgrading except that Middleman v3 can only go as high as
Opal 0.7.x (because of the version of sprockets it has), which makes it a no-go
for using it with [Reactrb], which needs Opal 0.8 at least.

I've got sites that will likely be stuck on v3 for some time in part because
apparently I've been using a lot of non-features (like instance variables in
templates). But more so, I ran into a **showstopping bug** [#1951], where one
file failing to build will cause the entire `build` directory to get wiped. Hey,
guess what? I have several projects where I'm dealing with data that I can't
control directly and middleman blowing away my whole build directory basically
means either the *entire* update fails to push (in the case of sites hosted on
amazon s3) or completely crashes the site (in the case of sites where nginx is
hosting the build directory). This is compared to the current v3 behaviour where
*only that file* fails to build.

And aside from all of the annoyances with the upgrade, I've just been feeling
more and more like middleman isn't aligned with where I'm planning to go in the
future: which is basically JS driven single page apps (likely developed using
reactrb).

## react is like node all over again

If I'm honest, the whole react.js thing feels a lot like my obsession with
node.js back in the day: which is to say, it's something that I feel like I
*should* be using but haven't even really figured out how to do anything of
substance with (Python with google app engine was what I was using prior to my
short stint with node).

React (like node.js once upon a time) is just so far
removed from the way I've been working up to now that it's often hard to simply
wrap my head around how to build anything with it.

But that brings me to what this blog is *currently* using: [gatsby].

## gatsby

> Build sites like it's 1995.
>
> <cite>gatsby's README</cite>

That doesn't really say *what* gatsby is, but I think it's kind of funny
especially as someone who's embraced the 'static first' way of website building
since the early 2010s.

### why I build static


For a quick aside on *why* I build static: it's best summed up as my being a
cheap ass. See, I don't really want to pay for hosting out of pocket on projects
that aren't making any money. That and static is hella capable of handling
traffic spikes (especially when paired with [CloudFlare]'s free plan).

But what's got me playing with gatsby right now is that it's a static site
generator that uses [react.js][react] components to build static html. Why is
this important? Honestly because I still struggle with the *how* of react site
building and basically forcing me to think in terms of react components for
everything could be a perfect teaching tool. Whether this will actually happen,
who knows. It will likely come down to whether I can figure out how to integrate
[reactrb] or not.

There are other react.js static site builders, but gatsby is what has my eye at
the moment.

It's been a good long run with middleman, but I tend to think it's time to move
on. Whether gatsby will be the thing I ultimate move on to or not, who knows.

[ruby]: https://www.ruby-lang.org/
[middleman]: https://middlemanapp.com/
[reactrb]: http://reactrb.org/
[gatsby]: https://github.com/gatsbyjs/gatsby
[cloudflare]: https://www.cloudflare.com/
[react]: https://facebook.github.io/react/
[#1951]: https://github.com/middleman/middleman/issues/1951
