require("expectThat.mocha")
{PopupSteps} = require("./PopupTestSteps")
homePage = new PopupSteps

describe "Popupper", ->

	it "should show a popup when I click a link", ->
		homePage.navigate_to_homepage ->
			homePage.click_a_link().then -> homePage.there_should_be_a_popup
