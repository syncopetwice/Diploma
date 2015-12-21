@MR.module "Charts.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Chart extends Mn.ItemView
		template: "Charts/show/templates/chart"

		ui:
			refresh: ".js-refresh-charts"

		events:
			'click @ui.refresh': "refresh"

		refresh: ->
			@trigger "charts:refresh"
			console.log "Charts Refresh"
