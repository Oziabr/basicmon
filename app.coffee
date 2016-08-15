require 'require-yaml'

async   = require 'async'
moment  = require 'moment'
request = require 'request'
config  = require './config'

main = ->
  result = {}
  timer = moment()

  operation = (val, key, callback) ->
    request {url: val, json: true}, (error, response, body) ->
      if !error && response.statusCode == 200
        result[key] = body
        callback null

  final = ->
    console.log 'done', timer.format('YYYY.MM.DD hh:mm:ss.SSS'), moment().diff(timer), result

  async.eachOf config.sources, operation, final

setInterval main, config.timer