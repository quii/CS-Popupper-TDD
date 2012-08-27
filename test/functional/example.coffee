zombie = require("zombie")
require("expectThat.mocha")

browser = new zombie.Browser()
homepage = "http://localhost:3000"

describe "Coffee Express", ->

	expectThat "It should have the correct title on homepage", (done) ->
		browser.visit homepage, ->
			browser.text("title").should be "Coffee Express"
			done()

	expectThat "It should wire up a url path to template", (done) ->
		browser.visit "#{homepage}/about", ->
			browser.statusCode.should be "200"
			done()

# Great example here: http://freshbrewedcode.com/danmohl/2012/02/20/expectthat-with-coffeescript-zombie-mocha-and-node/