# Creating an R package to help streamline MIS processing.
usethis::create_package("mis",
                        fields = list(Title = "Streamlined MIS Trouble Shooting for YCCD",
                                      `Authors@R` = 'person("Christian", "Million",
                                       email = "millionc@yosemite.edu",
                                       role = c("aut", "cre"))',
                                      Description = "Provides functions and data to facilitate streamlined
                                      data processing for the MIS reporting.",
                                      License = "MIT + file LICENSE"),
                        rstudio = TRUE,
                        open = TRUE)

# Add this script to the .Rbuildignore file
usethis::use_build_ignore(c("create_mis_package.R"))

# Use ded_widths.R to process raw data and save to data/ded_widths.rda
usethis::use_data_raw("ded_widths")

# Create and then edit the template README.rmd
usethis::use_readme_rmd()

usethis::use_mit_license("Christian Million")

# Create files for my functions and then add them to studenttracker/R
usethis::use_r("read")        # For reading in Colleague Workfiles
usethis::use_r("prep")       # For writing workfiles with appropriate formatting
usethis::use_r("write")       # For writing workfiles with appropriate formatting

# Add pipe
usethis::use_pipe()

# Use GIT
usethis::use_git()

# Add dependencies
usethis::use_package("readr")
usethis::use_package("purrr")
usethis::use_package("stringr")


# Document my functions by adding #', @params, and @export then:
devtools::document()

# Install Package
devtools::install()

# Create A pkgdown Website
#usethis::use_pkgdown()

#pkgdown::build_site()

#pkgdown::preview_site()

# Template to organize reference section
pkgdown::template_reference()
