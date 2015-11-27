@MR.module "UserApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		showUser: ->
			userView = @getUserView()
			App.userRegion.show userView

		getUserView: ->
			new Show.User