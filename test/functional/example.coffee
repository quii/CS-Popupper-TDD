zombie = require("zombie")
require("expectThat.mocha")

browser = new zombie.Browser()
homepage = "http://localhost:3000"

describe "Popupper", ->

	expectThat "It should show a popup when I click a link", (done) ->
		browser.visit homepage, ->
			browser.clickLink("#p1").then ->
				browser.queryAll("#colorbox").length.should be 1
				done()
