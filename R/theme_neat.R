#' A neat ggplot2 theme
#' @description A ggplot2 theme that includes bold face titles and 
#' neat facet themes.
#' @param base_size base font size, given in pts
#' @param base_family base font family
#' @examples
#' iris %>% 
#'   ggplot2::ggplot(ggplot2::aes(x = Sepal.Length,
#'                                y = Sepal.Width,
#'                                colour = Species)) +
#'   ggplot2::geom_point() +
#'   ggplot2::facet_wrap(~Species) +
#'   theme_neat() 
#' @importFrom ggplot2 theme_classic theme element_text element_blank
#' @importFrom ggtext element_markdown
#' @export

theme_neat <- function(base_size = 11, base_family = ""){
  theme_classic(base_size = base_size,
                base_family = base_family) +
    theme(
      plot.title = element_text(face = 'bold',
                                hjust = 0.5),
      plot.caption = element_markdown(hjust = 0),
      axis.title = element_text(face = 'bold'),
      axis.text = element_markdown(colour = 'black'),
      legend.position = 'bottom',
      legend.title = element_text(face = 'bold'),
      strip.background = element_blank(),
      strip.text = element_text(face = 'bold')
    )
}
