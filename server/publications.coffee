Meteor.publish "allProblems", ->
  MathProblems.find() 


Meteor.publish "getProblem", (pid) ->
  MathProblems.find _id:pid 
