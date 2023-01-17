#' A neat ggplot2 theme
#' @description A ggplot2 theme that includes bold face titles and 
#' neat facet themes.
#' @param base_size base font size, given in pts
#' @param base_family base font family
#' @details 
#' All ggplot2 theme text elements are set using [`ggtext::element_markdown`](https://wilkelab.org/ggtext/reference/element_markdown.html) 
#' allowing markdown syntax to be included in plot text elements such as the title or axis labels. See the example.
#' @examples
#' iris %>% 
#'   ggplot2::ggplot(ggplot2::aes(x = Sepal.Length,
#'                                y = Sepal.Width,
#'                                fill = Species)) +
#'   ggplot2::geom_point(size = 3,
#'                       shape = 21) +
#'   ggplot2::facet_wrap(~Species) +
#'   ggplot2::labs(title = 'Another *Iris* dataset plot',
#'                 subtitle = 'As an **example**',
#'                 caption = ' A caption that includes some **markdown**',
#'                 x = 'Sepal length',
#'                 y = 'Sepal width') +
#'   theme_neat() 
#' @importFrom ggplot2 theme_classic theme element_text element_blank
#' @importFrom ggtext element_markdown
#' @export

theme_neat <- function(base_size = 11, base_family = ""){
  theme_classic(base_size = base_size,
                base_family = base_family) +
    theme(
      plot.title = element_markdown(face = 'bold',
                                    size = base_size + 4),
      plot.subtitle = element_markdown(size = base_size + 1),
      plot.caption = element_markdown(hjust = 0),
      axis.title = element_markdown(face = 'bold'),
      axis.text = element_markdown(colour = 'black'),
      legend.position = 'bottom',
      legend.title = element_markdown(face = 'bold'),
      legend.text = element_markdown(),
      strip.background = element_blank(),
      strip.text = element_markdown(face = 'bold',
                                size = base_size + 1)
    )
}
