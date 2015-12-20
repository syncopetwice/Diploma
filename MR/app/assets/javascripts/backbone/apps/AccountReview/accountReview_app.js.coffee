@MR.module "AccountReview", (AccountReview, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		show: ->
			AccountReview.Show.Controller.show()

	AccountReview.on "start", ->
		API.show()