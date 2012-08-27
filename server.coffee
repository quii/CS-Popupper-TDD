express = require('express')
routes = require('./routes')

app = express()

app.configure ->
  app.set('views', __dirname + '/views')
  app.set('view engine', 'jade')
  app.use(express.bodyParser())
  app.use(express.methodOverride())
  app.use(app.router)
  app.use(express.static(__dirname + '/public'))

app.configure('development', ->
  app.use(express.errorHandler({ dumpExceptions: true, showStack: true }))
)

app.configure('production', ->
  oneYear = 31557600000;
  app.use(express.static(__dirname + '/public', { maxAge: oneYear }))
  app.use(express.errorHandler())
)

app.get('/', routes.index)

[
  'top-level'
].map (controllerName) ->
  controller = require './controllers/' + controllerName
  controller.setup app

app.listen(3000)
currentEnvironment = app.settings.env
console.log "Listening on port 3000 running as #{currentEnvironment}"