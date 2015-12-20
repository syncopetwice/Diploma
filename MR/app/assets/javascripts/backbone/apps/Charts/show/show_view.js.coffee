@MR.module "Charts.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Chart extends Mn.ItemView
		template: "Charts/show/templates/_chart"

	class Show.Charts extends Mn.CompositeView
		template: "Charts/show/templates/charts"
		className: "charts-wrapper"
		childViewContainer: '.charts'
		childView: Show.Chart

		ui:
			refresh: ".js-refresh-charts"

		events:
			'click @ui.refresh': -> @trigger "refresh:charts"