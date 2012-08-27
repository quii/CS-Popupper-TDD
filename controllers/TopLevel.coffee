# Controller definition for top level urls such as index, about us, contact, etc ...

# For your own controllers you will almost definitly want to extend the Controller class to define your own behaviour

controller = require('./Controller')
exports.setup = (app) -> new controller.Controller("/", app)