@MR.module "AccountReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		show: ->
			data = @getData()

			view = @getView data

			App.AccountReviewRegion.show view

		getData: ->
			new Backbone.Collection [
				{
					name: "Burlington - Widgets 300K"
					account: "Burlington Textiles Corp of America"
					strategy: ""
					lastUpdate: "4/17/2013"
					owner: "1"
					accountHealthScore: "2"
				}
				{
					name: "Burlington - Zippers 250K"
					account: "Burlington Textiles Corp of America"
					strategy: ""
					lastUpdate: "4/17/2013"
					owner: "1"
					accountHealthScore: "2"
				}
				{
					name: "Burlington - Packaging"
					account: "Burlington Textiles Corp of America"
					strategy: ""
					lastUpdate: "4/17/2013"
					owner: "1"
					accountHealthScore: "2"
				}
			]

		getView: (data) ->
			new Show.Table
				collection: data


