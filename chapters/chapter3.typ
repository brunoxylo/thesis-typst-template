#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Ein weiteres Kapitel
<ch:literature:chapter3>

#lorem(100)

== Listings

Enumeration with bullets: \
- #lorem(10)
- #lorem(10)
- #lorem(10)

Enumeration with numbers: \
+ #lorem(10)
+ #lorem(10)
+ #lorem(10)

== Graphics
Try to use SVGs for the figures. They are vector graphics and can be scaled without loss of quality. \
You can export a chart as svg in powerpoint by right clicking on it and selecting "Save as Picture". \
Then select "SVG" as file format. \
Alternatively, PNG, JPEG, GIF are supported by typst. \

#figure(
  image("../figures/figure1.svg", width: 100%),
  caption: [A generic chart],
) <fig:chart1>

#v(10pt)

#figure(
  image("../figures/figure2.svg", width: 100%),
  caption: [Another generic chart],
) <fig:chart1>

#pagebreak()

== Tables
#figure(
  table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: horizon,

    [],
    [*Area*],
    [*Parameters*],

    [cylinder],
    [$ pi h (D^2 - d^2) / 4 $],
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],

    [tetrahedron],
    [$sqrt(2) / 12 a^3 $],
    [$a$: edge length]
  ),
  caption: [A table example],
) <tab:table1>

== Standard deviation
<formula:formulas_stddev>
\
$s = sqrt( sum_(1)^n (x_i - overline(x))^2 / (n-1) )$
