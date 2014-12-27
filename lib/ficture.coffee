testData = [
  { "problem" : "## Try to Prove Fundamental Theorem of Calculus:\n- ### Leibniz: $\\frac{\\partial}{\\partial x} \\int_a^x f(y) dy = f(x)$\n- ### Newton: $\\int_a^b f(x) dx = f(b) - f(a)$", "tags" : [  "Calculus",  "Newton",  "Leibniz" ], "userId" : "ona9XXRR4ZkZuEyZ5", "_id" : "zBKWfbtHYstbQhnQD" },
  { "problem" : "## Given a sequence $ x_{n+1} = 1 + \\frac{1}{1+x_n}$,\n\n## Prove: $\\lim_{n \\to \\infty} x_n = \\sqrt{2}$ for $x_0 \\neq -\\sqrt{2}$", "tags" : [  "Calculus",  "Sequence convergence" ], "userId" : "ona9XXRR4ZkZuEyZ5", "_id" : "2H8P9EjzX6z6ea6bg" }
]

Meteor.startup ->
  if MathProblems.find().count() is 0
    MathProblems.insert data for data in testData