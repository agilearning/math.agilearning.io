Router.configure
  layoutTemplate: 'layout'

  
Meteor.startup ->
  Router.map -> 

    @route "index",
      path: "/"
      template: "index"
      data:
        user: ->
          Meteor.user()
        problems: ->
          MathProblems.find()
      waitOn: ->
        Meteor.subscribe "allProblems"

    @route "createProblem",
      path: "createProblem/"
      template: "problemCreator"
      data:
        user: ->
          Meteor.user()
