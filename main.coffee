defaultText = "# Ity It!"

if Meteor.isClient
  Template.tryMarked.helpers
    tryIt: ->
      Session.get "tryIt"
  
  Template.tryMarked.events
    "change .tryIt": (e,t) ->
      e.stopPropagation()
      newTryIt = $(e.target).val()
      Session.set "tryIt", newTryIt
    

  Meteor.startup ->
    Session.set "tryIt", defaultText

    marked.setOptions
      renderer: new marked.Renderer()
      gfm: true
      tables: true
      breaks: false
      pedantic: false
      sanitize: true
      smartLists: true
      smartypants: false



