@MR.module "OpportunityReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.OpportunityReviewRow extends Mn.ItemView
		template: "OpportunityReview/show/templates/_row"
		tagName: "tr"

	class Show.OpportunityReviewTable extends Mn.CompositeView
		template: "OpportunityReview/show/templates/table"
		childView: Show.OpportunityReviewRow
		childViewContainer: "tbody"

		ui:
			list: ".js-list"
			filter: "a[data-filter]"

		events:
			"click @ui.list" : "list"
			"click @ui.filter": "filterBy"

		list: ->
			@trigger "opp:list"
			console.log 'Opp List click'

		filterBy: (event) ->
			event.preventDefault()
			@trigger "opp:filter"
			console.log "Filtered By #{$(event.target).data('filter')}"