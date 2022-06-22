#' Writing checks
#' @description Check an R markdown file (.Rmd) for word count, spelling and grammatical errors.
#' @param file Path to a `.Rmd` file to check.
#' @param checks Character vector of checks to perform.
#' @return None. Check results are printed to the console.
#' @examples 
#'  file_path <- system.file('example.Rmd',package = 'jfmisc')
#'  writingChecks(file_path)
#' @importFrom wordcountaddin text_stats 
#' @importFrom spelling spell_check_files
#' @importFrom gramr write_good_file
#' @importFrom tools file_ext
#' @export

writingChecks <- function(file = 'manuscript.Rmd', checks = c('word count','spelling','grammar')){
  
  if (file_ext(file) != 'Rmd'){
    stop('Argument file should be a `.Rmd` file.',
         call. = FALSE)
  } 
  
  if (!file.exists(file)){
    stop(
      paste0('File ',file,' does not exist!'),
      call. = FALSE
    )
  }
  
  checks <- match.arg(
    checks,
    choices = c('word count','spelling','grammar'),
    several.ok = TRUE
  )
  
  options(knitr.table.format = 'markdown')
  
  cat('######### Writing Checks #########\n')
  
  if ('word count' %in% checks) {
    cat('\nWord count')
    
    suppressMessages({
      text_stats(file) %>%
        print()
    }) 
  }
  
  if ('spelling' %in% checks) {
    cat('\nSpelling\n\n')
    
    spell_check_files(file,lang = 'en_GB') %>%
      print()
  }
  
  if ('grammar' %in% checks) {
    cat('\nGrammar')
    
    write_good_file(file) %>%
      print()
  }
  
  invisible()
}