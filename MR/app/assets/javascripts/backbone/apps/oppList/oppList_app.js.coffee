@MR.module "OppListApp", (OppListApp, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		showOppList: ->
			OppListApp.Show.Controller.showOppList()

	OppListApp.on "start", ->
		API.showOppList()