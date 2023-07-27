
#let project(title: [], subtitle: [], author: [], professors: (), body) = {
	set document(author: author, title: title)
	set page(paper: "a4", margin: (inside: 3cm, outside: 2.5cm), numbering: none)
	set text(font: "New Computer Modern", lang: "it")
	set par(justify: true, leading: 0.75em)
	set text(size: 12pt)
	show par: set block(spacing: 1.6em)
	show link: underline
	show heading: it => block(it.body, below: 2em, above: 2em)
	align(center, [
		#v(15em)
		#heading(level: 1, outlined: false, text(size: 30pt, title))
		#v(2em)
		#heading(level: 2, outlined: false, text(size: 18pt, subtitle))
		#align(bottom, [
			#text(size: 18pt, emph(author))
			#v(1em)
			#if type(professors) == "string" {
				text(size: 16pt, professors)
			} else {
				text(size: 16pt, professors.join(", "))
			}
			#v(2em)
			#text(size: 16pt, datetime.today().display("[year]"))
			#v(2cm)
		])
	]) + body
}
