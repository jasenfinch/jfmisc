#' @name nomatch
#' @rdname nomatch
#' @title Non-matching operator
#' @description A binary operator to detect non matching values. The opposite of the `%in%` operator. 
#' @param x vector or NULL: the values to be matched
#' @param y vector or NULL: the values to be matched against
#' @examples 
#' 1:10 %!in% c(1,3,5,9)
#' @export

`%!in%` <- function(x,y) !x %in% y
