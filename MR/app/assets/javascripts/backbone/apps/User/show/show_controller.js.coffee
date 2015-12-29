@MR.module "User.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      @layout = @getLayoutView()

      @layout.on "show", =>
        @detailsRegion()

      App.UserRegion.show @layout

    detailsRegion: ->
      detailsView = @getDetailsView()

      @layout.details.show detailsView

    getDetailsView: ->
      new Show.Details

    getLayoutView: ->
      new Show.Layout