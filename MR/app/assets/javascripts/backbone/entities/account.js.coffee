@MR.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Account extends Backbone.Model

	class Entities.AccountCollection extends Backbone.Collection
		model: Entities.Account
		url: "accounts"

	API = 
		getData: ->
			new Backbone.Collection [
				{
					name: "Burlington - Widgets 300K"
					account: "Burlington Textiles Corp of America"
					strategy: "secondary"
					lastUpdate: "4/17/2013"
					owner: "1"
					accountHealthScore: "2"
				}
				{
					name: "Austria - Plugin 200K"
					account: "Austria of UN"
					strategy: "new"
					lastUpdate: "2/15/2015"
					owner: "2"
					accountHealthScore: "5"
				}
				{
					name: "Burlington - Zippers 250K"
					account: "Burlington Textiles Corp of America"
					strategy: "good"
					lastUpdate: "4/17/2013"
					owner: "1"
					accountHealthScore: "2"
				}
				{
					name: "Burlington - Packaging"
					account: "Burlington Textiles Corp of America"
					strategy: "old"
					lastUpdate: "4/17/2013"
					owner: "1"
					accountHealthScore: "2"
				}
			]
			# data = new Backbone.Collection
			# data.fetch()
			# data

	App.reqres.setHandler "entities:account", ->
		API.getData()