# Dasher :gift: - Tracking every open Pull Request from the GitHub firehose, so you don't have to.

## What?

Dasher is a Ruby worker that tracks every Pull Request with an open status on the GitHub firehose.

## How? & Why?

:gift: Because why not?

[Dasher](https://github.com/24pullrequests/dasher) monitors [GitHub firehose](http://github-firehose.herokuapp.com/events) for any [pullrequestevent](https://developer.github.com/v3/activity/events/types/#pullrequestevent) with a status of ```opened```. Dasher then posts the event to the main [24PullRequests](https://github.com/24pullrequests/24pullrequests) app which checks to see if the user that opened the PR is participating in 24PullRequests. If this is true then Dasher will record the PR and posts that to the [24PullRequests Firehose](https://github.com/24pullrequests/firehose) which then gives [Tweets](https://github.com/24pullrequests/tweets) a stream of data for Tweets to use.
