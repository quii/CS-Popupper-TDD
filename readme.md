# Instructions
- Clone this project into a directory
- Run npm install (This should make a node_modules directory)
- Assuming you have all the prerequisites...
$ node app.js

# Prerequisites
- Node.js 
- Coffeescript
$ npm install -g coffee-script
- Mocha
$ npm install -g mocha
- Zombie
npm install -g zombie

# Testing
Tests use ExpectThat (https://github.com/dmohl/expectThat) for nice assertions, Zombie (http://zombie.labnotes.org/) for a headless browser and Mocha (http://visionmedia.github.com/mocha/) to bring it all together

CakeFile has two tasks for tests
$ unit:test and functional:test
$ functional:test needs the node webserver running

# Client side coffeescript. 
There is a CakeFile with a watch method so you can write Coffeescript client side code and have it automagically compile for you.

Put your client files in a "client-coffee" directory in the root folder and add them to the appFiles array in the CakeFile.

# To do
- Make test output not nasty