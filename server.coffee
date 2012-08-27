express = require('express')
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

# As you add more controllers to the controllers directory add their names to the array below

['TopLevel'].map (controllerName) ->
  controller = require './controllers/' + controllerName
  controller.setup app

app.listen(3000)

console.log "Listening on port 3000 running as #{app.settings.env}"