@MR.module "AccountReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Row extends Mn.ItemView
		template: "AccountReview/show/templates/_row"
		tagName: "tr"

	class Show.Empty extends Mn.ItemView
		template: "AccountReview/show/templates/_empty"
		tagName: "tr"

	class Show.Table extends Mn.CompositeView
		template: "AccountReview/show/templates/table"
		emptyView: Show.Empty
		childView: Show.Row
		childViewContainer: "tbody"

		ui:
			list: ".js-list"
			filter: "a[data-filter]"

		events:
			"click @ui.list" : "list"
			"click @ui.filter": "filterBy"

		list: ->
			@trigger "account:list"
			console.log 'Account List click'

		filterBy: (event) ->
			event.preventDefault()
			@trigger "opp:filter"
			console.log "Filtered By #{$(event.target).data('filter')}"