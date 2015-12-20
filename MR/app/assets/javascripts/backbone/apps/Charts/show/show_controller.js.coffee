@MR.module "Charts.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		getData: ->
			new Backbone.Collection [
				{data: 20}
				{data: 30}
				{data: 40}
				{data: 50}
				{data: 60}
				{data: 70}
			]

		getView: (data) ->
			new Show.Charts
				collection: data

		getChartOptions: ->
			options =
				width: 300
				height: 200

		show: ->
			data = @getData()
			# options = @getChartOptions()
			view = @getView data
			App.ChartsRegion.show view
