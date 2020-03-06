
#'Read Workfile
#'
#'Reads in an MIS submission workfile using the provided widths
#'
#'
#' @export
read_workfile <- function(filepath, widths, col_names = names(widths)){

 readr::read_fwf(file = filepath,
                        readr::fwf_widths(widths = widths,
                                          col_names = col_names),
                        col_types = paste0(rep('c', length(widths)), collapse = ""))

}


#'Read in XB workfile
#'
#'Reads in the XB workfile and captures each file into an element of a list.
#'
#'
#'
#' @export
read_xb <- function(path){

  XB <- mis::read_workfile(path, mis::ded_widths$XB, names(mis::ded_widths$XB))
  XF <- mis::read_workfile(path, mis::ded_widths$XF, names(mis::ded_widths$XF))
  XE <- mis::read_workfile(path, mis::ded_widths$XE, names(mis::ded_widths$XE))

  list(
    XB = XB[XB$GI90 == "XB",],
    XF = XF[XF$GI90 == "XF",],
    XE = XE[XE$GI90 == "XE",]
  )
}
