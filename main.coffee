if Meteor.isClient
  Template.tryMarked.helpers
    testMarkdown: "# h1\n## h2\n- l1\n- l2\n"
    testLaTex: "$$\lim a_n=\lim b_n=\lim c_n$$"
    testMarkdownLatex: "# h1\n## h2\n- l1 $\lim a_n$\n- l2 $\lim b_n$\n"
    

  Meteor.startup ->
    marked.setOptions
      renderer: new marked.Renderer()
      gfm: true
      tables: true
      breaks: false
      pedantic: false
      sanitize: true
      smartLists: true
      smartypants: false



