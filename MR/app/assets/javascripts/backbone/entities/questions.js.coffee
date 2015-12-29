@MR.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Question extends Backbone.Model

  class Entities.Questions extends Backbone.Collection
    model: Entities.Question

  API = 
    getQuestions: ->
      new Entities.Questions [
        {
          question: 1
          title: "Our team has high user adoption through the first year of Salesforce implementation."
          answer: 1
          options: [1,3]
        }
        {
          question: 2
          title: "We have identified coordinators to help with Salesforce adoption."
          answer: 2
          options: [2,3]
        }
        {
          question: 3
          title: "Our coordinators monitor Salesforce adoption and share metrics with team members."
          answer: 3
          options: [3,5]
        }
      ]

  App.reqres.setHandler "entities:questions", ->
    API.getQuestions()

  App.reqres.setHandler "entities:answers", ->
    plucked = _.pluck((App.request ("entities:questions")).toJSON(), "answer")
