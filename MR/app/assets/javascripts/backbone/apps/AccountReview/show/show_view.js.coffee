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

		onRender: ->
			console.log 'onRender'

		ui:
			list: ".js-list"
			sortBy: "a[data-sort]"

		events:
			"click @ui.list" : "list"
			"click @ui.sortBy": "sortBy"

		list: ->
			@trigger "account:list"
			console.log 'Account List click'

		sortBy: (event) ->
			event.preventDefault()
			# console.log "Sorted By #{$(event.target).data('sort')}"
			App.vent.trigger("entities:account:sorted", @collection, {strategy: "#{$(event.target).data('sort')}"})