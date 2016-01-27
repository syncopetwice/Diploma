@MR.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Opp extends Backbone.Model

	class Entities.OppCollection extends Backbone.Collection
		model: Entities.Opp
		url: "http://jsonplaceholder.typicode.com/users"

	API =
		getData: ->
			users = new Entities.OppCollection
			users do fetch
			users

	App.reqres.setHandler "entities:opp", ->
		API.getData()