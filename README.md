# dasher :gift: - Tracking every open Pull Request from the GitHub firehose, so you don't have to.

## What?

Dasher is a Ruby worker that tracks every Pull Request with an open status on the GitHub firehose.

## How? & Why?

:gift: Because why not?

[Dasher](https://github.com/24pullrequests/dasher) monitors [GitHub firehose](http://github-firehose.herokuapp.com/events) for any [pullrequestevent](https://developer.github.com/v3/activity/events/types/#pullrequestevent) with a status of ```opened``` then passes it onto the [24PullRequests Firehose](https://github.com/24pullrequests/firehose) which then gives [Tweets](https://github.com/24pullrequests/tweets) a stream of data for Tweets to use.
