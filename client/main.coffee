Template.problemPreview.helpers
  previewProblem: ->
    Session.get "previewProblem"

Template.problemPreview.events
  "click .previewBtn": (e,t) ->
    e.stopPropagation()
    newPreview = $("[name='problem']").val()
    console.log newPreview
    Session.set "previewProblem", newPreview
  

Meteor.startup ->
  Session.set "previewProblem", ""

  marked.setOptions
    renderer: new marked.Renderer()
    gfm: true
    tables: true
    breaks: false
    pedantic: false
    sanitize: true
    smartLists: true
    smartypants: false



