@MathProblems = new Mongo.Collection "mathProblems"
@MathSolutions = new Mongo.Collection "mathSolutions"

@MathProblemsSchema = new SimpleSchema
  problem:
    type: String
    autoform: 
      rows: 5
      
  tags:
    type: Array
    optional: true
  "tags.$": 
    type: String

@MathSolutionsSchema = new SimpleSchema
  problemId:
    type: String
  solution:
    type: String
    autoform: 
      rows: 5
      
  tags:
    type: Array
    optional: true
  "tags.$": 
    type: String



Meteor.methods
  "createProblem": (problemData) ->

    console.log "problemData = "
    console.log problemData

    user = Meteor.user()

    if not user
      throw new Meteor.Error(401, "You need to login")

    problemData.userId = user._id

    MathProblems.insert problemData

  "createSolution": (solutionData) ->
    console.log "solutionData = "
    console.log solutionData

    user = Meteor.user()

    if not user
      throw new Meteor.Error(401, "You need to login")

    solutionData.userId = user._id

    MathSolutions.insert solutionData
    