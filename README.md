# Chrome packager: a simple tool to create chrome packaged applications

Don't you know what a chrome packaged application is? [read this first](http://developer.chrome.com/trunk/apps/about_apps.html).

Chrome packager brings all the goodness of the [Rails asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html) but without Rails, this is intended to write pure javascript applications.

What you can do with chrome packager:

- Write your apps as if you were writing it in the Rails asset pipeline
- Write your app with coffescript
- Write your stylesheets using sass
- Write your templates with hamljs(This is fixed now, but in the future you'll be able to use any sprockets compatible template engine)
- Once your app is ready, you can pack it with one command

## Installation

Install chrome packager form RubyGems:

	gem install chrome_packager

## Creating a new application

Once you have installed the gem:
	
	chrome-packager new [your app name]
	
You'll have the following file structure

	-app
	  -assets
		-javascripts
		  - application.js
		-stylesheets
		  - application.css
	  -views
	    - index.haml
	- background.js
	- manifest.json
	- config.ru
	- Gemfile
	- Gemfile.lock
	
Start writing your application, application.js and application.css are manifest files, you can use the [sprockets directive processor](https://github.com/sstephenson/sprockets#the-directive-processor) here, so you can manage your dependencies easily.

You must write your basic html inside the app/views/index.haml file, this is supposed to be a single page application so you don't need more files, all the markup should be inside javascript templates.

You'll also want to modify the [manifest.json](http://developer.chrome.com/trunk/apps/manifest.html) and [background.js](http://developer.chrome.com/trunk/apps/app_lifecycle.html) file to fix your needs.

## Running the application

Chrome packager creates a rack application, you only need to run this command:

	rackup

After this, your application should be running in the 9292 port, now you can open it in your browser with the following url:

	http://localhost:9292/

## Packing

Once you are done with your app or you want to try it as a chrome app, you have to pack it. Run the following command in the root of your app:

	chrome-packager pack
	
This command will compile all your javascripts and css's and will put them in the packaged dir.

After this just follow [this instructions](http://developer.chrome.com/trunk/apps/first_app.html#five) and point chrome to your app dir.

## TODO
- Compile the index.haml view to html
- Integrate [Jasmine](https://jasmine.github.io/)
- Every config is fixed now, add way to config the app will be good	
	
## Contributing

I made this in one night, so I'm sure there will be bugs, feel free to fork and send a pull request.


 
