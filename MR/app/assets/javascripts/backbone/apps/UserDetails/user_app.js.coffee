@MR.module "UserDetails", (UserDetails, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		showUser: ->
			UserDetails.Show.Controller.showUser()

	UserDetails.on "start", ->
		API.showUser()