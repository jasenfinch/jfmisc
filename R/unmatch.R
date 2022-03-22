#' @name unmatch
#' @rdname unmatch
#' @title Unmatching operator
#' @description A binary operator to detect unmatching values. The opposite of the `%in%` operator. 
#' @param x vector or NULL: the values to be unmatched
#' @param y vector or NULL: the values to be unmatched against
#' @examples 
#' 1:10 %!in% c(1,3,5,9)
#' @export

`%!in%` <- function(x,y) !x %in% y
