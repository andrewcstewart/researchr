
<!-- README.md is generated from README.Rmd. Please edit that file -->

# researchr

RMarkdown templates for research design documentation.

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
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

1)  Breaks down research projects into a few different interrelated
    components, which affords more flexibility in terms of conceptual
    composition of procedures and aids in more deliberative design of
    your research.
2)  Removes the distraction of naming and organizing your folder
    structure, which is by far the most challenging problem in data
    science.
3)  Structures the otherwise unstructured world of research code without
    imposing overly complex and burdensome software frameworks.

There are plenty of tools out there to help data science projects
including workflow managers, data versioning tools, metric collectors,
reproducibility automation, etc. `researchr` doesn’t attempt to do any
of those things, but it should compliment any choice of those tools
nicely.

At its core, the package consists of two primary components:

1)  RMarkdown templates for protocols and designs.
2)  Functions and metadata for managing the research design.

## Research Design

The research design itself consists simply of an RStudio project and
some `yaml` encoded metadata files, as well as RMarkdown files that
document the research.

### Data Protocols

Data protocols document the collection of datasets used throughout the
research design. A data protocol may document a single static dataset,
or parameterized procedure for repeated collections. Each protocol is
ideally oriented around a SQL query, encouraging collection from
pre-engineered data sources. The basic idea is to isolate and abstract
away data collection from the rest of the research so that downstream
analsyis does not reproduce this every time. This is also a good step to
perform any standard cleaning and transformations.

Examples:

  - Database query
  - Reference to remote storage (S3, etc)
  - Survey design
  - Generative process (for simulators)

### Method Protocols

Method protocols document any sort of analaysis. These make up the bulk
of any research design. Protocols consist of several analytical steps,
where each step typically requires some investigative evaluation. Each
method protocol references one or more data protocols, and may also
depend on an instrument. Generally speaking, method protocols are used
within experimental designs, but they can also be used standalone; for
example, as part of an EDA of a data protocol,

Examples:

  - EDA

  - Correlation analysis

  - Power analysis

  - Hypothesis test

  - Model evaluation

  - 
### Instrument Designs

Instruments are mechanisms constructed to investigations and
experiments. These are useful for designing recurring complex processes
whose primary value is some end product rather than insight at each
procedural step. They can be thought of as automated methods, where
individual steps in the procedure do not necessary merit individual
inspection and documentation.

The design typically consists of one or more R files containing either
libraries or scripts, or any other executables from workflow frameworks
(`dvc`, `mlflow`, `workflowr`, etc). It should also include an RMarkdown
file that documents the instrument’s usage and design, including
diagrams and technical details.

Examples:

  - Algorithms
  - Workflows (Model training, Transformation)
  - Simulators
  - Telemetry (Plots, Dashboards, etc)

### Experiment Designs

  - Experiments are empirical procedures that arbitrate competing models
    or hypotheses.

  - An experimental design documents a series of related experiments
    across varying factors.

  - A design includes the application of one or more method protocols
    and may also include instruments.

  - 
Examples:

  - A/B Test
  - ML experiment
  - Optimization

### Protoype Designs

  - A prototype is an early sample, model, or release of a product built
    to test a concept or process.
  - In `researchr`, a prototype represents some form of product from the
    research. In the simplest sense, this may just comprise of some
    brief documentation describing the product or feature, accompanied
    by a summary of the experimental results leading to the design
    decisions. While you can certainly develop simple prototype products
    in a `researchr` project, for anything more complicated than a
    simple app you should probably use a dedicated repository / project.
    Prototypes are also a good way to represent

Examples:

  - A `shiny` App
  - A `plumber` API
  - A publication report

A prototype can also be referenced by a data collection protocol, thus
creating a feedback loop from the sequence of research components. This
is a useful way to document and track a long term series of product
development experiments. Also, while most use cases envision data
protocols as the initial steps, this allows for research designs with
different starting points.

## Components

### Project types

  - research design document

### Document types

  - \[D\] data protocols
  - \[M\] method protocols
  - \[I\] instrumentation designs
  - \[E\] experimental designs
  - \[P\] prototype designs

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

  - 
## Likely requirements

  - `fs`
  - `yaml`
  - `DiagrammR`

## Frequently Asked Questions
