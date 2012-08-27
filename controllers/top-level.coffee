# Controller definition for top level routes, such as index, about-us, contact, etc.

exports.setup = (app) ->
	
	route = "/"

	app.get route, get

get = (req, res) -> res.render('index', title: 'Coffee Express')
