###

Controller assumes that path maps to a template name in /views
apart from "/" which will map to index

###

class exports.Controller

	constructor: (@path, @app) ->

		app.get path, @get
		app.post path, @post
		app.put path, @put
		app.delete path, @del


	jade_path: => unless @path == "/" then @path[1..] else "index"

	get: (req, res) => res.render(@jade_path(), title: 'Coffee Express')
	
	post = (req, res) => 
		console.log("Need to define post function")
		res.status(404)

	put = (req, res) => 
		console.log("Need to define put function")
		res.status(404)

	del = (req, res) => 
		console.log("Need to define delete function")
		res.status(404)

