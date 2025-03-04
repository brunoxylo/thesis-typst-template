#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl

#let tableOfAcronyms(title: "Acronyms", layoutConfig: none) = {
  show: layoutConfig

  heading(numbering: none, outlined: false, bookmarked: true, title)

  v(1em)

  print-glossary((
    (key: "DRY", short: "DRY", long: "Don't Repeat Yourself", desc: "a principle of software development aimed at reducing repetition"),
    (key: "API", short: "API", long: "Application Programming Interface", desc: "a standardized general-purpose modeling language in the field of software engineering"),
    (key: "UML", short: "UML", long: "Unified Modeling Language", desc: "a set of rules and protocols for building and interacting with software applications")
    )
  )
}
