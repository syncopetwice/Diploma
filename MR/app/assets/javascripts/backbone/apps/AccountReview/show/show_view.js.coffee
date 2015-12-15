@MR.module "AccountReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.AccountReviewRow extends Mn.ItemView
		template: "AccountReview/show/templates/_row"
		tagName: "tr"

	class Show.AccountReviewTable extends Mn.CompositeView
		template: "AccountReview/show/templates/table"
		childView: Show.AccountReviewRow
		childViewContainer: "tbody"