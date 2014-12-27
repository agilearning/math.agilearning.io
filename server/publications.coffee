Meteor.publish "allProblems", (query) ->
  MathProblems.find() 

