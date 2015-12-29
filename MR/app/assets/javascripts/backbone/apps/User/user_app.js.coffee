@MR.module "User", (User, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  class User.Router extends Mn.AppRouter
    "user"          : "show"
    "user/edit/:id" : "edit"

  API =
    show: ->
      User.Show.Controller.show()
    edit: (number) ->
      console.log number

  App.addInitializer ->
    new User.Router
      controller: API

  User.on "start", ->
    API.show()