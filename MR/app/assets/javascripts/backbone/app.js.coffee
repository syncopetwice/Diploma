@MR = do (Backbone, Marionette) ->

	App = new Marionette.Application

	App.rootRoute = "user"

	App.addRegions
		userRegion: '#user-region'
		oppListRegion: '#oppList-region'

	App.addInitializer ->
		App.module("UserApp").start()
		App.module("OppListApp").start()

	App.on "start", ->
		if Backbone.history
			Backbone.history.start()
			@navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""

	App
