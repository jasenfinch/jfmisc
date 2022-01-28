test_that("theme_neat works", {
  pl <- iris %>% 
    ggplot2::ggplot(ggplot2::aes(x = Sepal.Length,
                                 y = Sepal.Width,
                                 colour = Species)) +
    ggplot2::geom_point() +
    ggplot2::facet_wrap(~Species) +
    theme_neat() 
  
  expect_s3_class(pl,'ggplot')
})
