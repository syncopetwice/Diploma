@MR.module "Questions.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.QuestionView extends Mn.ItemView
    template: "Questions/show/templates/_item"
    className: "chapter"

  class Show.QuestionsView extends Mn.CompositeView
    template: "Questions/show/templates/list"
    childView: Show.QuestionView
    childViewContainer: "#chapters"

    ui:
      "next"  : ".js-next"
      "result": ".js-result"

    events:
      "click @ui.next"   : "next"
      "click @ui.result" : "result"

    onShow: ->
      # Show only first chapter
      chapters = $('#chapters').find(".chapter")
      chapters.hide().first().show()
      # Added checked radiobuttons on load
      $('.question-options').each (index, value) ->
        $(value).find(".radio:first").attr("checked", "checked")
      # Added a counter of all chapters
      $(".counters .total").html(@collection.length);

    onRender: ->
       @$el = @$el.children()
       @$el.unwrap()
       @setElement @$el

    next: (event) ->
      currentChapter = $(event.currentTarget).closest(".chapter")
      currentChapter.hide().next().show()

    result: (event) ->
      # Get values of user's radiobuttons
      radio =  $(".radio:checked")
      # Init Array of user's answers
      arr = []
      radio.each (index,value) ->
        # 1. Push values to array
        # 2. Parse data
        arr.push(JSON.parse($(value).attr("value")))
      trueCounter = _.filter(arr, (val) -> val == true).length
      # console.log "True Counter: #{trueCounter}"
      # Get results data from entities
      results = App.request "entities:results"
      results.each (result) ->
        if (_.contains(result.get("valid"), trueCounter) || (trueCounter > result.get("valid")))
          App.reqres.setHandler "entities:result", ->
            result
          App.Questions.Show.Controller.showResults()

  # Result
  class Show.ResultView extends Mn.ItemView
    template: "Questions/show/templates/result"

    ui:
      "order": ".js-order"

    events:
      "click @ui.order" : "order"

    order: (event) ->
      console.log event

    onRender: ->
       @$el = @$el.children()
       @$el.unwrap()
       @setElement @$el

    # repeat: (event) ->
    #   App.Questions.Show.Controller.show()