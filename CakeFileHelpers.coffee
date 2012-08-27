{exec}     = require 'child_process'
fs         = require 'fs'

exports.runTest = (path) ->
  exec "mocha --compilers coffee:coffee-script -R spec --recursive #{path}", (err, stdout, stderr) ->
    console.log stdout
    console.log stderr
    console.log err

exports.watch_and_run = (files_to_watch, action) ->
    for file in files_to_watch then do (file) ->
    fs.watchFile file, (curr, prev) ->
        if +curr.mtime isnt +prev.mtime
            console.log "Saw change in #{file}"
            invoke action