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
			sort: "a[data-sort]"

		events:
			"click @ui.list" : "list"
			"click @ui.sort": "sortBy"

		list: ->
			@trigger "opp:list"
			console.log 'Opp List click'

		sortBy: (event) ->
			event.preventDefault()
			console.log "Sorted By #{$(event.target).data('sort')}"