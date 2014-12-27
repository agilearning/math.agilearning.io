@MathProblems = new Mongo.Collection "mathProblems"

@MathProblemsSchema = new SimpleSchema
  problem:
    type: String
    min: 20
    max: 1000
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
