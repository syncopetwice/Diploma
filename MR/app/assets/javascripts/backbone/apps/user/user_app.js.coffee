@MR.module "UserApp", (UserApp, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		showUser: ->
			UserApp.Show.Controller.showUser()

	UserApp.on "start", ->
		API.showUser()