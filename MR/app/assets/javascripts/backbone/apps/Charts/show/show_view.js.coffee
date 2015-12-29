@MR.module "Charts.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Charts extends Mn.ItemView
    template: "User/templates/_charts"

    ui:
      refresh: ".js-refresh-charts"

    events:
      'click @ui.refresh': "refresh"

    refresh: ->
      @trigger "charts:refresh"
      console.log "Charts Refresh"
