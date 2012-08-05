zombie = require("zombie")
require("expectThat.mocha")

browser = new zombie.Browser()

describe "Coffee Express default page", ->
	expectThat "It should have the correct title", (done) ->
		browser.visit "http://localhost:3000", ->
			browser.text("title").should be "Coffee Express"
			done()


# Great example here: http://freshbrewedcode.com/danmohl/2012/02/20/expectthat-with-coffeescript-zombie-mocha-and-node/