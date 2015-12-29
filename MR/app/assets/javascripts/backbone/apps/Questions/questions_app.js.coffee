@MR.module "Questions", (Questions, App, Backbone, Marionette, $, _) ->

  API =
    show: ->
      Questions.Show.Controller.show()

  Questions.on "start", ->
    API.show()