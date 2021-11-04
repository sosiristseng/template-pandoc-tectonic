# Pandoc tectonic template

Compile Markdown files to beautiful PDF documents.

This template is powered by:

- [pandoc](https://pandoc.org/), a universal document converter. 
- [tectonic](https://tectonic-typesetting.github.io/en-US/), a modernized, complete, self-contained TeX/LaTeX engine.
- [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template), a clean pandoc LaTeX template to convert your markdown files to PDF or LaTeX.
- [GitHub actions](https://github.com/features/actions), to compile pushed Markdown files to pdf documents automatically.

## How to develop this template

Clone this repository along with its submodule:

```bash
git clone https://github.com/sosiristseng/template-pandoc-tectonic.git --recursive
```

## Showcase

### Basic Example

[PDF](basic-example/document.pdf) / [Markdown](basic-example/document.md)

*Preview*

![Basic Example](basic-example/preview.png)


### Beamer

[PDF](beamer/document.pdf) / [Markdown](beamer/document.md)

*Preview*

![Beamer](beamer/preview.png)


### Book

[PDF](book/document.pdf) / [Markdown](book/document.md)

*Preview*

![Book](book/preview.png)


### Boxes (Awesomebox)

Requires `pandoc-latex-environment` Python package.

[PDF](boxes-with-pandoc-latex-environment-and-awesomebox/document.pdf) / [Markdown](boxes-with-pandoc-latex-environment-and-awesomebox/document.md)

*Preview*

![Boxes](boxes-with-pandoc-latex-environment-and-awesomebox/preview.png)


### Boxes (tcolorbox)

Requires `pandoc-latex-environment` Python package.

[PDF](boxes-with-pandoc-latex-environment-and-tcolorbox/document.md) / [Markdown](boxes-with-pandoc-latex-environment-and-tcolorbox/document.md)

*Preview*

![Boxes](boxes-with-pandoc-latex-environment-and-tcolorbox/preview.png)


### Code blocks (with listings)

[PDF](code-blocks-listings/document.pdf) / [Markdown](code-blocks-listings/document.md)

*Preview*

![Code](code-blocks-listings/preview.png)


### Code blocks (without listings)

[PDF](code-blocks-without-listings/document.pdf) / [Markdown](code-blocks-without-listings/document.md)

*Preview*

![Code](code-blocks-without-listings/preview.png)


### Header and Footer

[PDF](header-and-footer/document.pdf) / [Markdown](header-and-footer/document.md)

*Preview*

![Header and Footer](header-and-footer/preview.png)


### Images and Tables

[PDF](images-and-tables/document.pdf) / [Markdown](images-and-tables/document.md)

*Preview*

![Images and Tables](images-and-tables/preview.png)


### Chinese support

Proper Chinese fonts have to be installed (In this case, Noto fonts) and use `-V CJKmainfont=` option e.g. `-V CJKmainfont="Noto Sans CJK TC"`.

[PDF](language-chinese/document.pdf) / [Markdown](language-chinese/document.md)

*Preview*

![Chinese support](language-chinese/preview.png)


### German support

[PDF](language-german/document.pdf) / [Markdown](language-german/document.md)

*Preview*

![Japanese support](language-german/preview.png)


### Japanese suppport 

Proper Japanese fonts have to be installed (In this case, Noto fonts) and use `-V CJKmainfont=` option e.g. `-V CJKmainfont="Noto Sans CJK JP"`.

[PDF](language-japanese/document.pdf) / [Markdown](language-japanese/document.md)

*Preview*

![Japanese support](language-japanese/preview.png)


### Page background

[PDF](page-background/document.pdf) / [Markdown](page-background/document.md)

*Preview*

![Page background](page-background/preview.png)


### Title page with background

[PDF](title-page-background/document.pdf) / [Markdown](title-page-background/document.md)

*Preview*

![Title page background](title-page-background/preview.png)

### Title (custom page)

[PDF](title-page-custom/document.pdf) / [Markdown](title-page-custom/document.md)

*Preview*

![Title page custom](title-page-custom/preview.png)

### Title (default page)

[PDF](title-page-default/document.pdf) / [Markdown](title-page-default/document.md)

*Preview*

![Title page default](title-page-default/preview.png)

### Title (green page)

[PDF](title-page-green/document.pdf) / [Markdown](title-page-green/document.md)

*Preview*

![Title page green](title-page-green/preview.png)

### Title (page with logo)

[PDF](title-page-logo/document.pdf) / [Markdown](title-page-logo/document.md)

*Preview*

![Title page green](title-page-logo/preview.png)
