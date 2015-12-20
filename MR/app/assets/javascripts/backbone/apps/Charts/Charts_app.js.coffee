@MR.module "Charts", (Charts, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		show: ->
			Charts.Show.Controller.show()

	Charts.on "start", ->
		API.show()