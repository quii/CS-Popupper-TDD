require("expectThat.mocha")
{PopupSteps} = require("./PopupTestSteps")
homePage = new PopupSteps

describe "Popupper", ->

	beforeEach (done) -> homePage.navigate_to_homepage(done)

	expectThat "should show a popup when I click a link", (done) ->
		homePage.click_a_link().then ->
			homePage.there_should_be_a_popup()
			homePage.should_be_on_the_homepage()
			done()
