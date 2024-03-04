# typst template for the ICA abstracts of the ICA conferences series

This repo implements the official [ICA abstracts of the ICA conference series](https://www.abstracts-of-the-ica.net/) as [typst](https://typst.app/docs/) template. It is based in particular on the official [`LaTeX` Template](https://www.ica-conference-publications.net/ica_latex_template.html).

> [!CAUTION]
> The bibliography style (the way your citations in the text body and your references show up) differs (slightly) from the official `LaTeX` template.

## What is typst?
> Typst is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use.
>
> – From the [typst github repo](https://github.com/typst/typst)

## How to use

### 🔧 1. Install `typst`

See [here](https://github.com/typst/typst?tab=readme-ov-file#installation) for more information on how to install `typst` on your system.


### 📜 2. Make sure required fonts are available

Make sure the required font _Times New Roman_ is installed (and activated) on your system.

### 🚀 3. Compile the document

Compile the document to a `.pdf` file by running:

```bash
typst c main.typ
```

To watch the file for changes and recompile the output on save (super fast, thanks to `typst`!) run:

```bash
typst w main.typ
```

You can define a custom output path for the above two commands:

```bash
typst c main.typ my-abstract.pdf
```

### 🧪 4. Adjust the metadata
You can set the document's `title`, the `keywords`, a `bib` file and the authors and their affiliations at the beginning top of the `main.typ`, via the arguments in the function call of `ica-abstract`.

#### `title`
The `title` can either be a string (`"My awesome title"`) or a `content` (`[My awesome title]`)

#### `authors`
The `authors` argument needs to be an array of which each item corresponds to one author. Every author has a name and one ore multiple affiliations. Additionally, the attribute `corresponding` can be set to `true` for the corresponding author.

Every author's affiliation need to have at least an `id` which corresponds to the position in the affiliations array. Optionally, an e-mail address for the respective author at the respective affiliation, can be set via the `email` attribute.

> [!TIP]
> The `authors` array in `main.typ` can serve as a starting point.

#### `affiliations`
The `affiliations` argument is an `array` of `string`s, containing the names of the each affiliation.

#### `keywords`
The `keywords` argument is optional, though storngly recommended. It needs to be an `array` of `string`s.

#### `bibliography-file`
The `bibliography-file` arguments is optional. If you want to use citations you can define the name or (or the path) to a `.bib` file.


## Limitations / To-Dos

- [ ] The bibliography style used at the moment seems to be close to the one in the in `LaTeX` template but is not yet 100% correct (e.g., Volumes are not indicated)