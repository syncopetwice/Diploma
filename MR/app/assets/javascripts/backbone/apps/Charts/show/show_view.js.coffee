@MR.module "Charts.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Chart extends Mn.ItemView
		template: "Charts/show/templates/_chart"
		className: "chart"

	class Show.Charts extends Mn.CompositeView
		template: "Charts/show/templates/charts"
		childViewContainer: '.charts'
		childView: Show.Chart

