{exec}     = require 'child_process'

exports.runTest = (path) ->
  exec "mocha --compilers coffee:coffee-script -R spec --recursive #{path}", (err, stdout, stderr) ->
    console.log stdout
    console.log stderr
    console.log err