@MR.module "OppListApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.OppListRow extends Mn.ItemView
		template: "oppList/show/templates/_row"
		tagName: "tr"

	class Show.OppListTable extends Mn.CompositeView
		template: "oppList/show/templates/table"
		childView: Show.OppListRow
		childViewContainer: "tbody"
