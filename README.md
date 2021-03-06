
<!-- README.md is generated from README.Rmd. Please edit that file -->

# researchr

RMarkdown templates for research design documentation.

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
![pkgdown](https://github.com/andrewcstewart/researchr/workflows/pkgdown/badge.svg)
[![CRAN
status](https://www.r-pkg.org/badges/version/researchr)](https://CRAN.R-project.org/package=researchr)
<!-- badges: end -->

## Installation

``` r
# Install release version from CRAN
install.packages("researchr")
# Install development version from GitHub
devtools::install_github("andrewcstewart/researchr")
```

## Usage

``` r
# Run once to configure your project to use researchr
researchr::use_researchr()
```

## Overview

The primary purpose of `researchr` is to aid in the design of research
projects, particularly data science projects, by offering a lightweight
composable frameork of document templates and functions to track and
manage a research design throughout the course of its history.

The emergence of the data science Notebook and its ensuing ecosystem of
tutorials tends to create the impression that data science can always be
captured in a concise, linear sequence of steps within a single session.
It makes sense for those tutorials to consist of single notebooks rather
than require readers to reference a series of separate notebooks, but in
practice real life is much more messy. Research projects typically span
long lengths of time, attempt several different approaches and
combinations of approaches, and iteratively build off of each previous
version of work. A more accurate picture might be a network of notebooks
; and that’s basically what `researchr` is.

There’s a couple key features that `researchr` offers to improve the
scientist’s quality of life:

1.  Breaks down research projects into a few different interrelated
    components, which affords more flexibility in terms of conceptual
    composition of procedures and aids in more deliberative design of
    your research.
2.  Removes the distraction of naming and organizing your folder
    structure, which is by far the most challenging problem in data
    science.
3.  Structures the otherwise unstructured world of research code without
    imposing overly complex and burdensome software frameworks.

There are plenty of tools out there to help data science projects
including workflow managers, data versioning tools, metric collectors,
reproducibility automation, etc. `researchr` doesn’t attempt to do any
of those things, but it should compliment any choice of those tools
nicely.

At its core, the package consists of two primary components:

1.  RMarkdown templates for protocols and designs.
2.  Functions and metadata for managing the research design.

## Research Design

The research design itself consists simply of an RStudio project and
some `yaml` encoded metadata files, as well as RMarkdown files that
document the research.

### Document types

  - **data protocols** document how your data is collected and abstract
    this step away from downstream analysis.
  - **method protocols** make up the bulk of your project and generally
    consist of various analyses.
  - **instrumentation designs** describe any algorithms or workflows
    that are frequently used throughout your project.
  - **experimental designs** organize a series of experiments using
    methods and instruments to generate evaluation reports.
  - **prototype designs** are useful for documenting the output of your
    research, whether that be for some form of product feature or
    advisory report.

### Functions

  - `use_researchr`
  - `new_research`
  - `add_data`
  - `add_method`
  - `add_instrument`
  - `add_experiment`
  - `add_prototype`
  - `_design_inventory` - traverses the directory tree to generate an
    inventory of current design state.
  - reference functions (ie, `here` for “M-1”)
  - id generators
  - plot the design graph
  - generate design table (data.frame)

## Likely requirements

  - `fs`
  - `yaml`
  - `DiagrammR`

## Frequently Asked Questions
