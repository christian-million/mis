
#'Write MIS workfiles
#'
#'
#' @export
write_workfile <- function(x, filepath, term, domain){

  if(missing(filepath)){
  filepath <- paste0("U59", as.character(term), domain, ".DAT")
  }

  write.table(x = x,
              file = filepath,
              append = F,
              quote = F,
              sep = "",
              row.names = F,
              col.names = F)

  test <- readLines(filepath)

  cat(paste0(test, collapse = "\n"), file = filepath, sep = "")

}

#'Write the XB workfiles
#'
#'
#' @export
write_xb <- function(xb, filepath, term, domain){

  if (missing(filepath)) {
    filepath <- paste0("U59", as.character(term), domain,
                       ".DAT")
  }
  write.table(x = xb$XB, file = filepath, append = F, quote = F,
              sep = "", row.names = F, col.names = F)
  write.table(x = xb$XF, file = filepath, append = T, quote = F,
              sep = "", row.names = F, col.names = F)
  write.table(x = xb$XE, file = filepath, append = T, quote = F,
              sep = "", row.names = F, col.names = F)
  test <- readLines(filepath)
  cat(paste0(test, collapse = "\n"), file = filepath, sep = "")

}


#'Write TX files
#'
#'
#' @export
write_tx <- function(..., term, filepath = paste0("U59", term, "TX.DAT"), author = Sys.info()['user']){

  work_files <- tibble::lst(...)

  row_counts <- purrr::map_dbl(work_files, ~ nrow(.x))

  compose_tx <- function(domain, term, records){
   paste0("TX590", term, domain, stringr::str_pad(records, 8, "left", "0"), "U59", term, domain, "DAT")
  }

  files <- purrr::pmap_chr(list(domain = names(work_files),
                       term = term,
                       records = row_counts),
                       compose_tx)

  tx_file <- paste0(compose_tx("TX", term, records = length(files)+1),author)

  cat(paste0(c(files, tx_file), collapse = "\n"), file = filepath, sep = "")
}
