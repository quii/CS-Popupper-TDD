zombie = require("zombie")

class exports.PopupSteps
	
	constructor: () ->
		@browser = new zombie.Browser()

	homepage = "http://localhost:3000"
	
	navigate_to_homepage: (done) -> @browser.visit homepage, -> done()
	there_should_be_a_popup: -> @browser.queryAll("#colorbox").length.should be 1
	click_a_link: -> @browser.clickLink("#p1")


