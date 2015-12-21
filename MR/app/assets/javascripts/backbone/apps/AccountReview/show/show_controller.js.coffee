@MR.module "AccountReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		getData: ->
			App.request "entities:account"

		getView: (data) ->
			new Show.Table
				collection: data

		show: ->
			data = @getData()

			view = @getView data

			App.AccountReviewRegion.show view


