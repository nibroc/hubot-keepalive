# Description
#   A script that has Hubot periodically message itself so connections (namely Slack) don't time out
#
# Configuration:
#   HUBOT_KEEPALIVE_CRON - The cron pattern for how often the keepalive message will be sent.
#                          By default, the message will be sent every 10 minutes.
#
# Dependencies
#   This script uses cron (the npm dependency, not the common Unix utility) version 1.1.x.
#
# Author:
#   Corbin Hughes <hughes.corbin@gmail.com>

CronJob = require('cron').CronJob;

cronPattern = process.env.HUBOT_KEEPALIVE_CRON || '0 */10 * * * *'

module.exports = (robot) ->
  robot.logger.debug "Scheduling keepalive with cron pattern: #{cronPattern}"
  job = new CronJob cronPattern, ->
    robot.logger.debug "Sending keep alive to #{robot.name}"
    robot.messageRoom robot.name, 'hubot-keepalive'

  job.start()
