###

Controller assumes that path maps to a template name in /views
apart from "/" which will map to index

###

class exports.Controller

	constructor: (@path, @app, @content) ->

		app.get path, @get
		app.post path, @post
		app.put path, @put
		app.delete path, @del

		# not sure how to DRY this up a bit, only the path is different..
		
		path_with_id = "#{path}/:id"

		app.get path_with_id, @get
		app.post path_with_id, @post
		app.put path_with_id, @put
		app.delete path_with_id, @del


	jade_path: => unless @path == "/" then @path[1..] else "index"

	get: (req, res) => res.render(@jade_path(), @content)
	
	post: (req, res) => 
		console.log("Need to define post function")
		res.status(404)

	put: (req, res) => 
		console.log("Need to define put function")
		res.status(404)

	del: (req, res) => 
		console.log("Need to define delete function")
		res.status(404)

