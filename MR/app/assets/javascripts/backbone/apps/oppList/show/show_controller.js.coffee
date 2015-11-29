@MR.module "OppListApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		showOppList: ->
			data = @getData()

			view = @getOppListView data

			App.oppListRegion.show view

		getData: ->
			new Backbone.Collection [
				{
					name: "Burlington - Widgets 300K"
					account: "Burlington Textiles Corp of America"
					amount: "$300,000.00"
					stage: "Identifying"
					closeDate: "3/20/2015"
					internalStrategicValue: ""
					externalStrategicValue: ""
					winProbability: "31.3%"
					representative: "Carl Rep"
				}
				{
					name: "Burlington - Zippers 250K"
					account: "Burlington Textiles Corp of America"
					amount: "$250,000.00"
					stage: "Negotiating"
					closeDate: "3/20/2015"
					internalStrategicValue: ""
					externalStrategicValue: ""
					winProbability: "25.6%"
					representative: "Amanda Rep"
				}
				{
					name: "Burlington - Packaging"
					account: "Burlington Textiles Corp of America"
					amount: "$300,000.00"
					stage: "Proposing"
					closeDate: "3/20/2015"
					internalStrategicValue: ""
					externalStrategicValue: ""
					winProbability: "21.1%"
					representative: "Denise Manager"
				}
			]

		getOppListView: (data) ->
			new Show.OppListTable
				collection: data


