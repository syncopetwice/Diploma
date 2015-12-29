@MR.module "User.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Layout extends Mn.LayoutView
    template: "User/templates/layout"

    regions:
      details: "#details-region"

  class Show.Details extends Mn.ItemView
    template: "User/templates/_details"