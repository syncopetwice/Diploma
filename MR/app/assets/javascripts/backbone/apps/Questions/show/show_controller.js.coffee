@MR.module "Questions.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    getQuestions: ->
      App.request "entities:questions"

    getQuestionsView: (data) ->
      new Show.QuestionsView
        collection: data

    show: ->
      questions = @getQuestions()
      console.log questions
      view = @getQuestionsView questions
      App.QuestionsRegion.show view