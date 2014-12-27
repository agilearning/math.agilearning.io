if Meteor.isClient
  Template.tryMarked.helpers
    testMarkdown: "# h1\n## h2\n- l1\n- l2\n"

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



