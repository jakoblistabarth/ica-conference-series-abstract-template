#let ica-abstract(title: "", authors: (), affiliations: (), keywords: none, bibliography-file: none, body) = {
  // Set the document's basic properties.
  set document(author: authors.first().name, title: title, keywords: keywords)
  set page(
    margin: (x: 20mm, top: 25mm, bottom: 28mm),
    header-ascent: 0%,
    header: locate(
        loc => if (loc.page() == 1) {
          image("ica-logo.svg", height: 1.19cm)
          line(length: 100%, stroke: .4pt)
        } else {
          align(end, {
            counter(page).display("1 of 1", both: true)
            v(2em)
          })
        }
    )
  )

  let base-font-size = 10pt

  set text(font: ("Times New Roman"), size: base-font-size, lang: "en")
  set par(justify: true, leading: .5em)

  show heading: it => {
    set block(spacing: 0pt)
    set text(size: base-font-size)
    it
  }

  pad(y: 2em,
      text(weight: "bold", 18pt, [
        #title
  ]))

  pad(
    top: .5em,
    bottom: .25em,
    [
      #set text(size: 12pt)
      #authors.map(
        (author) => {
          let affiliation = "a"
          let corresponding-indicator = if (
            author.keys().contains("corresponding") and author.corresponding == true
          ) { "*" } else { none }
          return [#author.name #super(affiliation)#corresponding-indicator]
        },
      ).join(", ")
    ],
  )

  pad(
    y: .25em,
    [
      #set text(style: "italic")
      #affiliations.map((afilliation) => { return [#afilliation] }).join(", ")
    ],
  )

  [\* Corresponding author]

  line(length: 100%, stroke: 0.4pt)

  pad(y: .5em, [*Keywords:* #keywords.join(", ")])

  heading([Abstract:])

  body

  if (bibliography-file != "none") {
      bibliography(
      bibliography-file,
      title: "References",
      // Not exactly right yet, perhaps create a custom style?
      // using ica.bst file which itself is based on a isprs style (see https://github.com/citation-style-language for public collection)
      style: "elsevier-harvard",
  )}
}