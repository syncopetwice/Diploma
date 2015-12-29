@MR.module "Questions.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.QuestionView extends Mn.ItemView
    template: "Questions/show/templates/_item"

  class Show.QuestionsView extends Mn.CompositeView
    template: "Questions/show/templates/list"
    childView: Show.QuestionView
    childViewContainer: "#list"

    ui:
      "next"  : ".js-next"
      "alert" : "#alert"

    events:
      "click @ui.next" : "next"

    onShow: ->
      # Added checked radiobuttons on load
      $('.options').each (index, value) ->
        $(value).find(".radio:first").attr("checked", "checked")
      # @ui.next.trigger("click")

    next: (event) ->
      # Get correct answers
      ANSWERS = App.request "entities:answers"
      # Get values of user's radiobuttons
      radio =  $(".radio:checked")
      # Init Array of user's answers
      arr = []
      radio.each (index,value) ->
        # 1. Push values to array
        # 2. Convert string values to boolean
        arr.push(JSON.parse($(value).attr("value")))

      # Compare Arrays : Correct Answers & User's Answers
      compare = _.isEqual(arr, ANSWERS)
      if(compare)
        @ui.alert.html("<div class='alert alert-success' role='alert'>Success</div>")
      else
        @ui.alert.html("<div class='alert alert-danger' role='alert'>Fail</div>")