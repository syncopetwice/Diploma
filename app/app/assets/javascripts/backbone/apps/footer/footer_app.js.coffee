@A.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->

	API =
		showFooter: ->
			FooterApp.Show.Controller.showFooter()

	@.on "start", ->
		API.showFooter()