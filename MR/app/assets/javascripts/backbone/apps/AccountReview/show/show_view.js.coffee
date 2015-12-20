@MR.module "AccountReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Row extends Mn.ItemView
		template: "AccountReview/show/templates/_row"
		tagName: "tr"

	class Show.Table extends Mn.CompositeView
		template: "AccountReview/show/templates/table"
		childView: Show.Row
		childViewContainer: "tbody"

		ui:
			goToList: ".js-go-to-list"

		events:
			"click @ui.goToList" : "log"

		log: ->
			console.log 'goToList'