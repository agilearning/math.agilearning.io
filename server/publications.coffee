Meteor.publish "allProblems", ->
  MathProblems.find() 

Meteor.publish "getProblem", (pid) ->
  MathProblems.find _id:pid 

Meteor.publish "getSolutions", (pid) ->
  MathSolutions.find problemId:pid 

