@MR.module "OpportunityReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.OpportunityReviewRow extends Mn.ItemView
		template: "OpportunityReview/show/templates/_row"
		tagName: "tr"

	class Show.OpportunityReviewTable extends Mn.CompositeView
		template: "OpportunityReview/show/templates/table"
		childView: Show.OpportunityReviewRow
		childViewContainer: "tbody"

		events:
			'click a[data-filter]': 'filterBy'

		filterBy: (event) ->
			event.preventDefault()
			console.log "Filter By #{$(event.target).data('filter')}"