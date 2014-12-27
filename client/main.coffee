Template.problemPreview.helpers
  previewProblem: ->
    Session.get "previewProblem"

Template.problemPreview.events
  "click .previewBtn": (e,t) ->
    e.stopPropagation()
    newPreview = $("[name='problem']").val()
    Session.set "previewProblem", newPreview


# Template.indexProblemsListBlock.rendered = ->
#   $('.problemsList').masonry
#     columnWidth: 100
#     itemSelector: '.problemInfo'

# Template.indexProblemBlock.rendered = ->
#   $('.problemsList').masonry 'reloadItems' 
#   $('.problemsList').masonry 'layout' 

  # elem = this.find ".problemInfo"
  # $elem = $(elem)
  # $elem.imagesLoaded ->
  # # elem = this.find ".problemInfo"
  # $('.problemsList').masonry 'appended', elem 



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



