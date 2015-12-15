@MR.module "AccountReview", (AccountReview, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		showAccountReview: ->
			AccountReview.Show.Controller.showAccountReview()

	AccountReview.on "start", ->
		API.showAccountReview()