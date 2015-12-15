@MR.module "OpportunityReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.OpportunityReviewRow extends Mn.ItemView
		template: "OpportunityReview/show/templates/_row"
		tagName: "tr"

	class Show.OpportunityReviewTable extends Mn.CompositeView
		template: "OpportunityReview/show/templates/table"
		childView: Show.OpportunityReviewRow
		childViewContainer: "tbody"