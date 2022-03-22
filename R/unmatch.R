#' @name unmatch
#' @rdname unmatch
#' @title Unmatched operator
#' @description A binary operator to detect unmatched values. The opposite of the `%in%` operator. 
#' @param x vector or NULL: the values to be compared
#' @param y vector or NULL: the values to be compared against
#' @examples 
#' 1:10 %!in% c(1,3,5,9)
#' @export

`%!in%` <- function(x,y) !x %in% y
