### 

Controller definition for top level urls such as index, about us, contact, etc ...

For your own controllers you will almost definitly want to extend the Controller class to 
define your own behaviour. 

e.g. 

class WidgetController extends controller.Controller
	get = (req, res) -> - your own behaviour -
	post = (req, res) -> - your own behaviour - 
	put = (req, res) -> - your own behaviour - 
	del = (req, res) -> - your own behaviour - 

Then just use WidgetController in place of the base controller in the setup call

###

controller = require('./Controller')

exports.setup = (app) -> 
	['/', '/about'].map (url) -> foo = new controller.Controller(url, app)