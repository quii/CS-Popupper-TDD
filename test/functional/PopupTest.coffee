require("expectThat.mocha")
PopupTestSteps = new require("./PopupTestSteps")

homePage = new PopupTestSteps.PopupSteps()

describe "Popupper", ->

	beforeEach (done) -> homePage.navigate_to_homepage(done)

	expectThat "It should show a popup when I click a link", (done) ->
		homePage.click_a_link().then ->
			homePage.there_should_be_a_popup
			done()
