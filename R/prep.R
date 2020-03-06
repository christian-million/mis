#'Prep Workfiles
#'
#'Adds spaces to meet the width requirements of each element. Replaces NA with appropriate amount of spaces.
#'
#'
#' @export
prep_workfile <- function(x, widths){
  x %>%
    purrr::map2_df(widths, ~ stringr::str_pad(string = .x, width = .y, pad = " ", side = "right")) %>%
    purrr::map2_df(widths, ~ ifelse(is.na(.x), paste0(rep(" ", .y), collapse = ""), .x))
}


#'Prep XB
#'
#'Since the XB files essentially contains 3 different files,
#'  this file will clean each of the files read in by `read_xb` separately.
#'
#'
#' @export
prep_xb <- function(xb){
  list(
    XB = mis::prep_workfile(xb$XB, mis::ded_widths$XB),
    XF = mis::prep_workfile(xb$XF, mis::ded_widths$XF),
    XE = mis::prep_workfile(xb$XE, mis::ded_widths$XE)
  )
}
