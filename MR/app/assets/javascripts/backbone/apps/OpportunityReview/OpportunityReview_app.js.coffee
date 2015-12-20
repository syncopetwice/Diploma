@MR.module "OpportunityReview", (OpportunityReview, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	class OpportunityReview.Router extends Mn.AppRouter
		appRoutes:
			"opportunity" : "fullscreen"

	API = 
		show: ->
			OpportunityReview.Show.Controller.show()
		fullscreen: ->
			console.log "Opportunity Review Fullscreen"

	App.addInitializer ->
		new OpportunityReview.Router
			controller: API

	OpportunityReview.on "start", ->
		API.show()
