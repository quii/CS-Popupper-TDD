# CoffeeScript Express

This is a skeleton Node.js web project which has the following features configured

- Express JS web framework for Node.js that you can write in CoffeeScript
- Client side CoffeeScript automatically compiled into JS which is then compiled into one app file with Uglify.js minification
- Unit testing of CS code with Mocha and ExpectThat
- Functional test of web pages using Zombie.js
- A light MVC approach to get you started

## Instructions
- Clone this project into a directory
- Run npm install (This should make a node_modules directory)
- Assuming you have all the prerequisites...
	$ node app.js

## Prerequisites
- Node.js 
- Coffeescript
- Mocha
- Zombie
- ExpectThat
- Uglify JS https://github.com/mishoo/UglifyJS
- LESS - http://lesscss.org/

<pre>
$ npm install -g coffee-script
$ npm install -g mocha
$ npm install -g zombie
$ npm install -g expectThat.mocha
$ npm install -g uglify-js
$ npm install -g less
</pre>

## Testing
Tests use ExpectThat (https://github.com/dmohl/expectThat) for nice assertions, Zombie (http://zombie.labnotes.org/) for a headless browser and Mocha (http://visionmedia.github.com/mocha/) to bring it all together

CakeFile has two tasks for tests

<pre>
$ unit:test and functional:test
$ functional:test needs the node webserver running
</pre>

## Client side coffeescript. 
There is a CakeFile with a watch:js method so you can write Coffeescript client side code and have it automagically compile for you.

Put your client files in a "client-coffee" directory in the root folder and add them to the appFiles array in the CakeFile.

## Configuring
Configuring on an environmental basis is fairly simple, look inside server.coffee or do some googling. 

To run the app in a particular environment run the following in a terminal

<pre>
$ export NODE_ENV=production
</pre>

## Routes / Controllers

In server.coffee there is an array of controller names, if you wish to add more controllers simply add the filename into that array and save the controller files to the controllers directory.

I have made a very simple Controller.coffee class which gives an example of a very basic controller. 

It is used inside TopLevel.coffee to make very simple routes with little logic in them. Controller will automatically map your route name to a corresponding view for GET requests. For instance if you define /widgets/help, when you hit that URL it will try and load from views /widgets/help.jade.

For your own project you will want to extend from the controller class to add your own logic, but it's probably worth following the convention of route name to template path. 

## LESS

Put less files inside the less directory. The cakefile has a watch command for the less files which will call the less compiler on main.less, so assuming your main.less includes all of your files it will work.

## To do
- Make test output not nasty