#import "@preview/glossarium:0.5.3": gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Einleitung
<ch:intro>

#nameref(<ch:literature:review>) is referenced in the code with a custom namref function to display its title instead of its number.
You can also reference chapters, figures or bib entries with typst built in reference feature to display them with their number  instead like here @ch:literature:review.
Additionally you can omit the default prefix (chapter or figure) when referencing like here @ch:literature:review[]. Alternatively you can replace it with a custom one like here @fig:bubble_sort[Custom prefix].

== Motivation
#lorem(10) #gls("DRY") #lorem(20) #gls("DRY")

== Ziel der Arbeit
#lorem(20) #gls("API")

== Gliederung
#lorem(8) #gls("API", long: true) #lorem(10) #gls("UML") #lorem(15) \
#lorem(20) #glspl("UML") #lorem(5) #glspl("UML", long: true) #lorem(10) @oracle_2014
