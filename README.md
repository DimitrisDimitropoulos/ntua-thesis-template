# NTUA LaTeX thesis template

A Greek-language diploma thesis template for the School of Mechanical
Engineering at the National Technical University of Athens (NTUA). It includes
a cover, a declaration, Greek and English abstracts, a table of contents,
notation lists, thesis sections, an optional appendix, and an IEEE-style
bibliography.

This is an unofficial template. Check your school's submission requirements
before using it for a final thesis.

## Showcase

<p align="center">
<img alt="page-01" src="https://github.com/user-attachments/assets/4c6d7def-1082-4af8-a73d-6e8ad397f73f", width="45%" />
<img alt="page-010" src="https://github.com/user-attachments/assets/3f43330e-eb27-4ebf-9752-d147d01b9ac8", width="45%" />
</p>

## Requirements

- A TeX distribution with LuaLaTeX, such as TeX Live or MiKTeX.
- `latexmk` and `biber` available on your command path.
- Greek language support and the packages loaded in `conf.tex`, including
  `polyglossia`, `unicode-math`, `biblatex`, `biblatex-ieee`, `fontsize`,
  `siunitx`, `physunits`, `derivative`, TikZ, and `tcolorbox`. A full TeX Live
  installation is a convenient starting point.
- These fonts, available to LuaLaTeX by name:
    - Carlito
    - Iosevka
    - Fira Math
    - GFS Neohellenic Math

Fonts are not bundled. Install missing fonts or change the font selections
in `conf.tex`. Save source files as UTF-8.

## Build

Run this command from the project root:

```sh
latexmk -pdf -lualatex -interaction=nonstopmode -aux-directory=build -output-directory=build -f main.tex
```

The resulting document is **`build/main.pdf`**. `latexmk` runs LuaLaTeX and
Biber as needed to resolve citations and cross-references. The first build
may take longer while LuaLaTeX generates its font cache.

The `-f` option asks `latexmk` to continue processing despite errors; check
the exit status and `build/main.log` before relying on the generated PDF.

The included `latexmkrc` sets all of these options, so you can also run:

```sh
latexmk main.tex
```

To remove generated output:

```sh
latexmk -C main.tex
```

## Customize

1. Edit `meta.tex` to set the title, author, supervisor, school, sector,
   location, year, and PDF metadata. The uppercase author name is a separate
   field. English metadata fields are provided for adaptations; the current
   cover uses the Greek fields.
2. Replace the guidance and placeholders in the abstracts and thesis sections.
3. Update the acronym, variable, and subscript lists.
4. Replace the sample entry in `references.bib` and its citation in
   `introduction.tex` with your own references. The sample entry is fictional.
5. To include appendices, uncomment `\input{appendix.tex}` and its following
   `\clearpage` in `main.tex`.
6. Adjust typography, colors, margins, and bibliography settings in `conf.tex`,
   and the cover layout in `titlepage.tex`.

The document uses the `article` class, so its main divisions are `\section`
rather than `\chapter`. Review the cover layout after changing long titles,
names, or school information.

## Files

| File                                                                   | Purpose                                             |
| ---------------------------------------------------------------------- | --------------------------------------------------- |
| `main.tex`                                                             | Document assembly and declaration                   |
| `meta.tex`                                                             | Thesis details and PDF metadata                     |
| `conf.tex`                                                             | Packages, fonts, formatting, and bibliography setup |
| `titlepage.tex`                                                        | Cover layout                                        |
| `abstract.tex`                                                         | Greek and English abstracts                         |
| `introduction.tex`, `methodology.tex`, `results.tex`, `conclusion.tex` | Main thesis sections                                |
| `abbreviations.tex`, `variables.tex`, `subscripts.tex`                 | Notation lists                                      |
| `appendix.tex`                                                         | Optional appendices                                 |
| `references.bib`                                                       | Bibliography database                               |
| `logo/`                                                                | Cover emblem PDFs and asset notes                   |
| `latexmkrc`                                                            | Build configuration                                 |

## Publishing and license

Generated files under `build/` are ignored by Git. The PDF assets in `logo/`
are explicitly included because the cover requires `logo/pyro-white.pdf`.

Copyright (C) 2026 Dimitris Dimitropoulos.

Template source and documentation are free software: you can redistribute
and/or modify them under the terms of the GNU General Public License as
published by the Free Software Foundation version 3 of the License.

This template is distributed without any warranty; without even the implied
warranty of merchantability or fitness for a particular purpose. See the
[GNU General Public License](LICENSE) for the full terms.

The NTUA emblem PDFs are excluded from that license.
