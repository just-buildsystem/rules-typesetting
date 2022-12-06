# Typesetting rules for the `just` build system

A collection of rules related to typesetting.

- Latex
  - `["latex", "standalone"]` Simple rule to generate a `pdf` file,
    given a collection of source files and the entry point.
  - `["latex", "verbatim"]` Auxiliary target to wrap a file in a
    `verbatim` environment. Useful if the source file is generated,
    e.g., a sample run of a tool under development.
  - `["ps", "family"]` Generate a collection of `eps` files from
    a single `eps` file by replacing the definition of `stage` and
    `drawbb`. While not strictly related to latex, usually used
    for "animated" diagrams in slides.
  - `["latex", "latexmk"]` Simple rule to call `latexmk`, given a
    collection of source files and the entry point. The main
    difference with respect to `standalone` is given by the usage of
    `latexmk` itself, which runs `latex` the needed number of times
    eventually calling `bibtex` as well.
- Pandoc
  - `["pandoc", "standalone"]` Generate a single output file from
    a given list of files in order and a template.
  - `["pandoc", "template"]` Specify a template for pandoc by
    specifying additional arguments and files for a pandoc invocation.
  - `["files", "ordered"]` Specify a list of files in order. In
    this way, a sequence of files can be specified in a single
    place, even so it is used in different pandoc targets, e.g.,
    to render with different templates.
