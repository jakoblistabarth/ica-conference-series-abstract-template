#let ica-abstract(title: "", authors: (), affiliations: (), keywords: none, body) = {
  // Set the document's basic properties.
  set document(author: authors.first().name, title: title)
  set page(
    numbering: "1",
    number-align: center,
    margin: (x: 20mm, top: 25mm, bottom: 28mm),
  )
  set text(font: ("Times New Roman"), size: 10pt, lang: "en")
  set par(justify: true)

  image("ica-logo.svg", height: 1.19cm)
  line(length: 100%, stroke: .4pt)

  pad(y: 1em, text(weight: "bold", 18pt, [
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

  pad(y: .5em, [*Abstract:*])

  body
}