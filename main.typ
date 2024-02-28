#import "ica-abstract.typ": *
#import "@preview/tablex:0.0.8": tablex, colspanx, hlinex

#show: ica-abstract.with(
  title: "Guidelines for authors preparing manuscripts for publication in the Abstracts of the ICA conference series (Title of paper)",
  authors: (
    (
      name: "1st Author",
      affiliation: 1,
      corresponding: true,
      email: "first.author@email.com",
    ),
    (name: "2nd Author", affiliation: 1, email: "second.author@email.com"),
  ),
  affiliations: (("Affiliation A"),),
  keywords: ("guidelines", "formatting", "style", "Abstracts of the ICA"),
)

These are ICA guidelines for submitting abstracts to supplement ICA guidelines for preparation of papers. All abstracts for abstract-only submission to ICA-events must follow these guidelines and be written using this template. The ICA-event organizers may omit any paper that does not conform to the specified requirements.

An abstract for abstract-only submission must be *within maximum 2 pages*, single-spaced, A4 size (297 #sym.times 210mm / 11.69 #sym.times 8.27 inches). The font type Times New Roman with a size of ten (10) points is to be used. Use of paragraphing is encouraged. Section headings should not be used. Although full references are not expected, it is permitted to cite others' works with author and date information #cite(<AAS92>, form: "prose"), #cite(<AHNFRE84>, form: "prose"), #cite(<WERDER2010>, form: "prose"). References should be listed in alphabetical order in the reference section.

#figure(
  image("ica-logo.svg", width: 40%),
  caption: [Example figure, placement, caption and numbering: the famous ICA logo]
)

Tables and figures may be used. When using tables or figures, captions should be used, centered directly beneath the tables or figures. All captions are to be numbered consecutively, e.g. Figure 1, Table 2, Figure 2.

#figure(
  tablex(
    columns: 3,
    auto-hlines: false,
    row-gutter: 0mm,
    gutter: 0mm,
    hlinex(),
    [Setting], colspanx(2)[A4 size paper],
    hlinex(),
    [], [mm], [inches],
    [Top], [25], [1.0],
    [Bottom], [28], [1.1],
    [Left], [20], [0.8],
    [Right], [20], [0.8],
    hlinex(),
  ),
  caption: [Margin settings for A4 size paper]
)

The Abstracts of the International Cartographic Association (Abstracts of the ICA) are the conference series that publishes abstracts accepted for conferences and workshops organized by the ICA. The abstracts undergo an abstract-based review by the programme committee. The Abstracts of the ICA are open-access publications; they are published under the Creative Commons Attribution 4.0 License and the authors retain the copyright.

Abstracts are intended to present very early or practical work. They provide a platform for artwork, demonstrations, or work of practitioners - work that would otherwise not be very well suited for a description in an extended scientific paper. Still, the publication of the abstract is very valuable both for the authors and for the participants of the meeting. Abstracts are reviewed based on quality and innovativeness, as well as on the practical relevance.

// optional
*Acknowledgements*

Acknowledgements of support for the project / paper / author are welcome.

// optional
#bibliography(
  "ICAguidelines_bib.bib",
  title: "References",
  // Not exactly right yet, perhaps create a custom style? see https://github.com/citation-style-language
  style: "elsevier-harvard",
)