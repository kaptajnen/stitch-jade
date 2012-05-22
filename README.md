stitch-jade
===========

Adds Jade support for stitch

  stitch = require 'stitch'
  require './lib/stitch-jade'
  fs = require 'fs'

  bundle = stitch.createPackage paths: ['models/', 'views/']

  bundle.compile (err, source) ->
  	fs.writeFile 'app.js', source, (err) ->
  		if (err)
  			throw err
		
  		console.log 'Compiled!'