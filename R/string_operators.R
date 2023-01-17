#' String operators
#' @rdname string_operators
#' @description String operators to concatenate vectors that are coercible to character strings. Vector arguments are recycled as needed.
#' @param x a vector coercible to a character string
#' @param y a vector coercible to a character string
#' @return 
#' A vector of concatenated strings.
#' @examples 
#' ## Concatenate two strings
#' 'fish' %+% 'sticks'
#' 
#' ## Concatenate a numeric and string
#' 1 %+% '1'
#' 
#' ## Concatenate two character vectors
#' letters[1:5] %+% letters[1:5]
#' 
#' ## Concatenate two strings with white space between
#' 'hello' %+ % 'world'
#' 
#' ## Concatenate two character vectors with white space between
#' letters[1:5] %+ % letters[1:5]
#' 
#' ## Concatenate two strings with an underscore between
#' 'hello' %+_% 'world'
#' 
#' ## Concatenate two character vectors with an underscore between
#' letters[1:5] %+_% letters[1:5]
#' 
#' ## Concatenate two strings with a dash between
#' 'hello' %+-% 'world'
#' 
#' ## Concatenate two character vectors with a dash between
#' letters[1:5] %+-% letters[1:5]
#' @export

`%+%` <- function(x,y){
  paste0(x,y)
}

#' @rdname string_operators
#' @export

`%+ %` <- function(x,y){
  paste(x,y)
}

#' @rdname string_operators
#' @export

`%+_%` <- function(x,y){
  paste(x,y,sep = '_')
}

#' @rdname string_operators
#' @export

`%+-%` <- function(x,y){
  paste(x,y,sep = '-')
}