@MR = do (Backbone, Marionette) ->

	App = new Marionette.Application

	App.rootRoute = "user"

	App.addRegions
		UserDetailsRegion: '#user-details-region'
		ChartsRegion: '#charts-region'
		OpportunityReviewRegion: '#opportunity-review-region'
		AccountReviewRegion: "#account-review-region"

	App.addInitializer ->
		App.module("UserDetails").start()
		App.module("Charts").start()
		App.module("OpportunityReview").start()
		App.module("AccountReview").start()

	App.on "start", (options) ->
		if options.history
			if Backbone.history
				Backbone.history.start()
				@navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
		else
			throw new Error ("History is off")

	App.vent.on "account:list", ->
		console.log "Account List"

	App
