# jfmisc 0.1.0

* Added the string operators `%+%`, `%+ %`, `%+_%`, `%+-%` for concatenating vectors.

* `theme_neat()` now includes [`ggtext::element_markdown`](https://wilkelab.org/ggtext/reference/element_markdown.html) in all text theme elements allowing markdown syntax to be included in these elements such as the plot title or axis text.

* The relative sizes of the plot title, plot subtitle, caption, facet strip text and legend text have all been increased in `theme_neat()`.

# jfmisc 0.0.5

* Re-export `ptol_pal()`, `scale_colour_ptol()` and `scale_fill_ptol()` from [`ggthemes`](https://jrnold.github.io/ggthemes/).

# jfmisc 0.0.4

* Added export wrapper functions that then return the exported file path.

# jfmisc 0.0.3

* Added the `writingChecks()` function for word count, spelling and grammar checks in `.Rmd` files.

# jfmisc 0.0.2

* Added the `%!in%` operator to detect unmatched values.

# jfmisc 0.0.1

* Added a `NEWS.md` file to track changes to the package.

* Re-export the [`magrittr`](https://magrittr.tidyverse.org/reference/pipe.htmL) pipe.

* Added `theme_neat()` [`ggplot2`](https://ggplot2.tidyverse.org/) plot theme.
