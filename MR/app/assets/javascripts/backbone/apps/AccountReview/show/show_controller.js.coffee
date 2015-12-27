@MR.module "AccountReview.Show", (Show, App, Backbone, Marionette, $, _) ->

	Show.Controller =

		getData: ->
			App.request "entities:account:data"

		# getSorted: ->
		# 	App.request "entities:account:sort"

		getView: (data) ->
			new Show.Table
				collection: data

		# Default View
		show: ->
			data = @getData()
			view = @getView data
			App.AccountReviewRegion.show view

		# Sorted View
		# showSorted: ->
		# 	data = @getSorted()
		# 	view = @getView data
		# 	App.AccountReviewRegion.show view