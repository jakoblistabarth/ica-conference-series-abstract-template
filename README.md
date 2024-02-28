# ICA abstracts template for typst

This repo implements the official [ICA abstracts of the ICA conference series](https://www.abstracts-of-the-ica.net/) as [typst](https://typst.app/docs/) template. It is based in particular on the official [LaTeX Template](https://www.ica-conference-publications.net/ica_latex_template.html).

## What is typst?
> Typst is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use.
>
> – From the [typst github repo](https://github.com/typst/typst)

## How to use

### 1. Install `typst`

See [here](https://github.com/typst/typst?tab=readme-ov-file#installation) for more information on how to install `typst` on your system.

### 2. Compile the document

Compile the document to a pdf by running

```bash
typst c main.typ
```

To watch the file for changes and recompile the output on save (super fast, thanks to typst!) run:

```bash
typst w main.typ
```

For the above two commands a output path can be defined:

```bash
typst c main.typ my-abstract.pdf
```

## How to customize the template

Provide an array of authors and array of affiliations (an array of length 1 is fine for both) as argument to the `ica-abstract` call in `main.typ`

## Limitations / To-Dos

- The pairing of affiliations and authors is not yet implement
- The bibliography style is not yet correct (e.g., Volumes are not indicated)
- Margins on the first page are off
- The vertical spacing in the table is too big
- The fontsize of the bibliography title is too big