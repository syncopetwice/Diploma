@MR = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.rootRoute = "user"

  App.addRegions
    UserRegion: "#user-region"
    AccountReviewRegion: "#account-review-region"
    UserDetailsRegion: '#user-details-region'
    ChartsRegion: '#charts-region'
    OpportunityReviewRegion: '#opportunity-review-region'

  App.addInitializer ->
    App.module("AccountReview").start()

  App.on "start", (options) ->
    if options.history
      if Backbone.history
        Backbone.history.start()
        @navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
    else
      throw new Error ("History is off")
  App
