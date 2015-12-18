@MR.module "OpportunityReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		getData: ->
			new Backbone.Collection [
				{
					name: "1"
					account: "1"
					amount: "1"
					stage: "1"
					closeDate: "1"
					internalStrategicValue: "1"
					externalStrategicValue: "1"
					winProbability: "1"
					representative: "1"
				}
				{
					name: "2"
					account: "2"
					amount: "2"
					stage: "2"
					closeDate: "2"
					internalStrategicValue: "2"
					externalStrategicValue: "2"
					winProbability: "2"
					representative: "2"
				}
				{
					name: "3"
					account: "3"
					amount: "3"
					stage: "3"
					closeDate: "3"
					internalStrategicValue: "3"
					externalStrategicValue: "3"
					winProbability: "3"
					representative: "3"
				}
				{
					name: "4"
					account: "4"
					amount: "4"
					stage: "4"
					closeDate: "4"
					internalStrategicValue: "4"
					externalStrategicValue: "4"
					winProbability: "4"
					representative: "4"
				}
			]

		getOpportunityReviewView: (data) ->
			new Show.OpportunityReviewTable
				collection: data

		getSortedReverseData: (data, filter) ->
			new SortedCollection(data)
				.setSort(filter)

		showOpportunityReview: ->
			data = @getData()
			view = @getOpportunityReviewView data
			App.OpportunityReviewRegion.show view