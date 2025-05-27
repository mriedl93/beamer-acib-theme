# Beamer ACIB Theme

Use as submodule:

```bash
git submodule add ...
```

Setup:

```bash
bash beamer-acib-theme/setup.sh
```

Use the template file `presentation.tex` to create the presentation now.

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

### `\gadacm`

Same but with cm as measure instead of from 0-1.

### `\abstikz`

```tex
\abstikz{ <content> }
```

Short for the absolute placement with tikz.

### `\txt`

```tex
\abstikz{ x }{ y }{ options }{ text }
```

Absolute placement of text.

### `\kastl`

Don't remember the purpose of that.

```tex
\kastl{ color }
```

### `\luain`

Short for evaluation of Lua code in latex.

