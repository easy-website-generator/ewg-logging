console = require 'console'
colors  = require 'colors'
util    = require 'util'

log = (args, color) ->
  if color
    args = args.map (arg) -> util.inspect(arg)[color]

  console.log.apply(this, args)

module.exports =
  console: console
  log:     (args...) -> log args
  info:    (args...) -> log args, 'yellow'
  error:   (args...) -> log args, 'red'
  success: (args...) -> log args, 'green'

  red:     (args...) -> log args, 'red'
  green:   (args...) -> log args, 'green'
  yellow:  (args...) -> log args, 'yellow'
  blue:    (args...) -> log args, 'blue'
  magenta: (args...) -> log args, 'magenta'
  cyan:    (args...) -> log args, 'cyan'
  gray:    (args...) -> log args, 'gray'
  white:   (args...) -> log args, 'white'
