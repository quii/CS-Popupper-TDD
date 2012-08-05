require("expectThat.mocha")

describe "tests", -> 
	expectThat -> 1.shouldnt be equal to 2
	expectThat -> "foo".should be equal to "foo"