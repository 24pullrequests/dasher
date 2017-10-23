# Dasher :gift:

Tracking every open Pull Request from the GitHub firehose, so you don't have to.

## What?

Dasher is a Ruby worker that tracks every Pull Request with an open status on the GitHub firehose.

## How? & Why?

:gift: Because why not?

[Dasher](https://github.com/24pullrequests/dasher) monitors [GitHub firehose](http://github-firehose.herokuapp.com/events) for any [pullrequestevent](https://developer.github.com/v3/activity/events/types/#pullrequestevent) with a status of ```opened```. Dasher then posts the event to the main [24PullRequests](https://github.com/24pullrequests/24pullrequests) app which checks to see if the user that opened the PR is participating in 24PullRequests. If this is true then Dasher will record the PR and posts that to the [24PullRequests Firehose](https://github.com/24pullrequests/firehose) which then gives [Tweets](https://github.com/24pullrequests/tweets) a stream of data for Tweets to use.

## Development

Source hosted at [GitHub](http://github.com/24pullrequests/dasher).
Report issues/feature requests on [GitHub Issues](http://github.com/24pullrequests/dasher/issues). Follow us on Twitter [@24pullrequests](https://twitter.com/24pullrequests). We also hangout on [Gitter](https://gitter.im/24pullrequests/24pullrequests).

### Getting Started

New to Ruby? No worries! You can follow these instructions to install a local server, or you can use the included Vagrant setup.

#### Installing a Local Server

First things first, you'll need to install Ruby 2.4.2. I recommend using the excellent [rbenv](https://github.com/sstephenson/rbenv),
and [ruby-build](https://github.com/sstephenson/ruby-build)

```bash
rbenv install 2.4.2
rbenv global 2.4.2
```

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Add documentation if necessary.
 * Commit, do not change procfile, version, or history.
 * Send a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2016 Andrew Nesbitt. See [LICENSE](https://github.com/24pullrequests/dasher/blob/master/LICENSE) for details.
