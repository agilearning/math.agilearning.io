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
   