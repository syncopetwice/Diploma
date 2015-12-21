@MR.module "OpportunityReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		getData: ->
			App.request "entities:opp"

		getView: (data) ->
			new Show.OpportunityReviewTable
				collection: data

		getSortedReverseData: (data, filter) ->
			new SortedCollection(data)
				.setSort(filter)

		show: ->
			data = @getData()
			view = @getView data
			App.OpportunityReviewRegion.show view