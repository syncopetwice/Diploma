@MR.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Question extends Backbone.Model

  class Entities.Questions extends Backbone.Collection
    model: Entities.Question

  API = 
    getQuestions: ->
      new Entities.Questions [
        {
          header: "User Adoption"
          heading: "User adoption is one of the most important issues considering software implementation. When users don’t accept the software, they don’t use it properly. If you have low user adoption, determine why, and take steps to improve it."
          body: [
            {
              question: 1
              title: "Our team has high user adoption through the first year of Salesforce implementation."
              answer: true
              options: [true,false]
            }
            {
              question: 2
              title: "We have identified coordinators to help with Salesforce adoption."
              answer: false
              options: [true,false]
            }
            {
              question: 3
              title: "Our coordinators monitor Salesforce adoption and share metrics with team members."
              answer: true
              options: [true,false]
            }
          ]
        }
      ]

  App.reqres.setHandler "entities:questions", ->
    API.getQuestions()

  App.reqres.setHandler "entities:answers", ->
    plucked = _.pluck((App.request ("entities:questions")).toJSON(), "answer")
