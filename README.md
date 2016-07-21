# hubot-keepalive [![Build Status](https://travis-ci.org/nibroc/hubot-keepalive.svg?branch=master)](https://travis-ci.org/nibroc/hubot-keepalive)

A script that has Hubot periodically message itself so connections (namely Slack) don't time out.

See [`src/keepalive.coffee`](src/keepalive.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-keepalive --save`

Then add **hubot-keepalive** to your `external-scripts.json`:

```json
[
  "hubot-keepalive"
]
```
# Supported configuration

Currently this script is only tested on Slack as the purpose of this script is to work around
a bug where the slack adapter will drop connections and then not reconnect. A proper fix is in
the works [here](https://github.com/slackhq/hubot-slack/issues/203). Or, there's also a bit of
background in [this issue](https://github.com/github/hubot/issues/1013).

## NPM Module

https://www.npmjs.com/package/hubot-keepalive
