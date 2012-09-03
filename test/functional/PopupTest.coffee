zombie = require("zombie")
require("expectThat.mocha")
require("./PopupTestSteps")

browser = new zombie.Browser()
homepage = "http://localhost:3000"

describe "Popupper", ->

	beforeEach (done) -> browser.visit homepage, -> done()

	expectThat "It should show a popup when I click a link", (done) ->
		browser.clickLink("#p1").then ->
			browser.queryAll("#colorbox").length.should be 1
			done()
