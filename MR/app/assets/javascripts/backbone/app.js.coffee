@MR = do (Backbone, Marionette) ->

	App = new Marionette.Application

	App.rootRoute = "user"

	App.addRegions
		UserDetailsRegion: '#user-details-region'
		OpportunityReviewRegion: '#opportunity-review-region'
		AccountReviewRegion: "#account-review-region"

	App.addInitializer ->
		App.module("UserDetails").start()
		App.module("OpportunityReview").start()
		App.module("AccountReview").start()

	App.on "start", ->
		if Backbone.history
			Backbone.history.start()
			@navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""

	App
