#' Red gradient colour scales
#' @rdname scale_gradient_red
#' @description
#' A simple red gradient colour scale that extends `ggplot2::scale_*_gradient`.
#' @inheritParams ggplot2::scale_colour_gradient
#' @param ... arguments to pass to `ggplot2::scale_*_gradient`
#' @examples
#' df <- data.frame(
#'   x = runif(100),
#'   y = runif(100),
#'   z1 = rnorm(100),
#'   z2 = abs(rnorm(100))
#' )
#' 
#' ggplot2::ggplot(df, ggplot2::aes(x, y)) +
#'   ggplot2::geom_point(
#'     ggplot2::aes(fill = z2),
#'     size = 3,
#'     shape = 21) +
#'   scale_fill_gradient_red() +
#'   theme_neat()
#' @export

scale_colour_gradient_red <- function(low = '#FFFFFF',high = '#F21A00',...){
  ggplot2::scale_colour_gradient(low = low,high = high,...)
}

#' @rdname scale_gradient_red
#' @export

scale_color_gradient_red <- function(low = '#FFFFFF',high = '#F21A00',...){
  ggplot2::scale_colour_gradient(low = low,high = high,...)
}

#' @rdname scale_gradient_red
#' @export

scale_fill_gradient_red <- function(low = '#FFFFFF',high = '#F21A00',...){
  ggplot2::scale_fill_gradient(low = low,high = high,...)
}
