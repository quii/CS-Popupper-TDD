class exports.Controller

	constructor: (@path, @app) ->
		
		app.get path, get
		app.post path, post
		app.put path, put
		app.delete path, del

	get = (req, res) -> res.render('index', title: 'Coffee Express')
	post = (req, res) -> console.log("Need to define post function")
	put = (req, res) -> console.log("Need to define put function")
	del = (req, res) -> console.log("Need to define delete function")

