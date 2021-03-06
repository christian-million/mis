
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mis

<!-- badges: start -->

<!-- badges: end -->

The goal of mis is to easily read, prep, and write MIS related
workfiles.

# Installation

Install it from [GitHub](https://github.com/christian-million/mis) with:

``` r
# install.packages("remotes")
remotes::install_github("christian-million/mis")
```

# Example

Here is an example of use:

``` r
# Attach Packages
library(mis)

# Read in the workfile with the appropriate widths.
SB <- read_workfile('path/to/CAST.SB', ded_widths$SB)

# Add characters to lengths of ded_widths and replaces NA with `width` amounts of blanks (' ')
SB <- prep_workfile(SB, ded_widths$SB)

# You can do data manipulation to SB file here

# If you don't add a filepath is will default to current directory
write_workfile(SB, filepath = "path/to/write/U59197SB.DAT")

# Write TX
# It will write a TX file that includes TX and SB records
write_tx(SB, term = 197, filepath = "U59197TX.DAT")
```

# Warnings

This package was built with the Yosemite Community College District
(YCCD) in mind, so some of the defaults (in the `write_*` functions)
likely reflect YCCD - with no current way to indicate other districts.

Also, the package was built to work with Fall 2019 submission file
widths. The California Community College Chancellor’s Office (CCCCO)
adds elements every once in a while, which may break this packages
current functionality.

# Contribute

If you’d like to help make this package more usable to other districts
and/or maintain it along with MIS changes, please feel free to submit a
pull request\!
