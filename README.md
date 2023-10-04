# Beamer ACIB Theme

Use as submodule:

```bash
git submodule add ...
```

Setup:

```bash
bash beamer-acib-theme/setup.sh
```

In the .tex header (e.g. for BioToP template):

```tex
\documentclass[aspectratio=169]{beamer}

\usepackage{beamer-acib-theme/beamerthembiotop}
\usepackage{beamer-acib-theme/beamercolorthembiotop}
\usepackage{beamer-acib-theme/utils}
```

## Utility functions

### `\fig`

Inserts a figure at an absolute placement.

```tex
\fig{ <x-position> }
    { <y-position> }
    { <path to image> }
    { <scale> }
```


### `\gada`

Creates a grid for easier absolute placements.

```tex
\gada
```


