
#import "template.typ": *

#show: project.with(
	title: "Titolo Tesi",
	subtitle: "Sottotitolo tesi",
	author: "Autore Tesi",
	professors: "Prof. Mario Rossi"
)

#counter(page).update(0)
#set page(numbering: "1")

= Abstract

#lorem(100)

#lorem(100)

#lorem(100)

#pagebreak()

= Dedica

#lorem(100)

#pagebreak()

#outline(title: [ Indice dei Contenuti ], indent: 20pt)

#pagebreak()

= Contenuti

#lorem(100)

== Sottosezione 1

#lorem(100)

#lorem(100)

Esempio di bibliografia @miur.

#pagebreak()

// Bibliografia

#bibliography("bibliography.bib", style: "chicago-author-date")
