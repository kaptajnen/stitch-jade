stitch = require 'stitch'
jade = require 'jade'
fs = require 'fs'

stitch.compilers.jade = (module, filename) ->
	content = jade.compile fs.readFileSync(filename, 'utf8'), client: true
	module._compile "module.exports = " + content, filename