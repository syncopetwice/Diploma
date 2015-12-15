@MR.module "UserDetails.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.UserView extends Mn.ItemView
		template: "UserDetails/show/templates/show_user"
		id: "user"