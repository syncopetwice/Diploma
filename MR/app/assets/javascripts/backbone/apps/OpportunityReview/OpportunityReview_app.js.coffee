@MR.module "OpportunityReview", (OpportunityReview, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		show: ->
			OpportunityReview.Show.Controller.showOpportunityReview()

	OpportunityReview.on "start", ->
		API.show()