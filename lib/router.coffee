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

    @route "solveProblem",
      path: "solveProblem/:pid"
      template: "problemSolver"
      data: ->
        resData = 
          user: ->
            Meteor.user()
          previewProblem: ->
            MathProblems.findOne().problem
          problemId: =>
            @params.pid
          quickFormData: =>
            problemId:@params.pid
        resData

      waitOn: ->
        Meteor.subscribe "getProblem", @params.pid
