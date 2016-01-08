@MR.module "Questions.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    getQuestions: ->
      App.request "entities:questions"

    getResults: ->
      App.request "entities:results"

    getQuestionsView: (data) ->
      new Show.QuestionsView
        collection: data

    # Get model from final result on "Result" click
    getResult: ->
      App.request "entities:result"

    getResultView: (model) ->
      new Show.ResultView
        model: model

    show: ->
      data = @getQuestions()
      view = @getQuestionsView data
      App.QuestionsRegion.show view

    showResults: ->
      # Get model
      model = @getResult()
      # Get view & pass model
      view = @getResultView model
      # Show view
      App.QuestionsRegion.show view