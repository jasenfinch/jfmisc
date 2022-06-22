#' Export a file
#' @rdname export
#' @description Handy wrapper functions to export data tables that then returns the file path of the exported file. This can be useful in applications such as within `tarchetypes::tar_file`.
#' @param x a data frame or tibble to export
#' @param file file or connection to write to
#' @param ... arguments to pass to `readr::write_csv()` or `xlsx::write.xlsx`
#' @return The file path of the exported file.
#' @details If the file path directory does not exist, the directory is created recuresively prior to export.
#' @examples
#' ## Export to a csv
#' exportCSV(iris, paste0(tempdir(),"/iris.csv"))
#'
#' ## Export to an Excel workbook
#' exportXLSX(iris, paste0(tempdir(),"/iris.xlsx"))
#' @importFrom readr write_csv
#' @importFrom xlsx write.xlsx
#' @export

exportCSV <- function(x,file,...){
  
  if (!dir.exists(dirname(file))){
    dir.create(dirname(file),
               recursive = TRUE)
  }
  
  write_csv(x = x,
            file = file,
            ...)
  
  return(file)
}

exportXLSX <- function(x,file,...){
  
  if (!dir.exists(dirname(file))) {
    dir.create(dirname(file), 
               recursive = TRUE)
  }
  
  write.xlsx(x,
             file = file,
             ...)
  return(file)
}