@MR.module "UserDetails.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		showUser: ->
			userView = @getUserView()
			App.UserDetailsRegion.show userView

		getUserView: ->
			new Show.UserView