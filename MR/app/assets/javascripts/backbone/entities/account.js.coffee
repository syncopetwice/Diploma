@MR.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Account extends Backbone.Model

	class Entities.AccountCollection extends Backbone.Collection
		model: Entities.Account
		url: "http://jsonplaceholder.typicode.com/users"

	API = 
		getData: ->
			users = new Entities.AccountCollection
			users.fetch()
			users

		# getSortedData: (collection, options) ->
		# 	data = new SortedCollection(collection).setSort(options.strategy)

	# Passing Data Into Controller
	App.reqres.setHandler "entities:account:data", ->
		API.getData()

	# Getting Collection & Strategy
	# App.vent.on "entities:account:sorted", (collection, strategy) ->
	# 	API.getSortedData(collection, strategy)

	# Passing Sorted Data
	# App.reqres.setHandler "entities:account:sort", ->
	# 	API.getSortedData()
