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

    next: (event) ->
      # Get correct answers
      answers = App.request "entities:answers"
      # Get values of user's radiobuttons
      radio =  $(".radio:checked")
      # Init Array of user's answers
      arr = []
      radio.each (index,value) ->
        # 1. Push values to array
        # 2. Parse data
        arr.push(JSON.parse($(value).attr("value")))

      console.log "Arr: #{arr}"

      # Compare Arrays : Correct Answers & User's Answers
      compare = _.isEqual(arr, answers)
      console.log "Compare: #{compare}"
      if(compare)
        @ui.alert.html("<div class='alert alert-success' role='alert'>Success</div>")
      else
        @ui.alert.html("<div class='alert alert-danger' role='alert'>Fail</div>")