@MR.module "Charts.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		getData: ->
			new Backbone.Collection []

		getView: (data) ->
			new Show.Charts
				collection: data

		getChartOptions: ->
			options =
				showPoint: true
				lineSmooth: true
				axisX:
					showGrid: false
					showLabel: false
				axisY:
					offset: 60
					labelInterpolationFnc: (value) ->
						'$' + value + 'm'

		getCharts: ->
			options = @getChartOptions()
			dataChart =
				labels: ['Week1', 'Week2', 'Week3', 'Week4', 'Week5', 'Week6'],
				series: [
					[5, 4, 3, 7, 5, 10]
					[3, 2, 9, 5, 4, 6]
					[2, 1, -3, -4, -2, 0]
				]
			dataChart2 =
				labels: ['Week1', 'Week2', 'Week3', 'Week4', 'Week5', 'Week6'],
				series: [
					[3, 2, 7, 2, 3, 5]
					[5, 4, 3, 7, 5, 10]
					[7, 4, -5, -2, -8, 2]
				]
			new Chartist.Line ".ct-chart", dataChart, options
			new Chartist.Line ".ct-chart-2", dataChart2, options

		show: ->
			data = @getData()
			view = @getView data
			App.ChartsRegion.show view
			@getCharts()
