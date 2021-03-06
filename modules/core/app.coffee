Widget = require 'core/widget'

class App extends Widget

	constructor: (@options) ->
		Router = Backbone.Router.extend options
		@router = new Router()

	start: ->
		React.render @render(), document.body
		Backbone.history.start()

	route: (name, fn) ->
		@router.route name, fn

module.exports = App
