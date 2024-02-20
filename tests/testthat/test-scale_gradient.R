
test_that("scale_color_gradient_red works", {
  df <- data.frame(
    x = runif(100),
    y = runif(100),
    z1 = rnorm(100),
    z2 = abs(rnorm(100))
  )
  
  pl <- ggplot2::ggplot(df, ggplot2::aes(x, y)) +
    ggplot2::geom_point(
      ggplot2::aes(color = z2)) +
    scale_color_gradient_red() +
    theme_neat()
  
  expect_s3_class(pl,'ggplot')
})

test_that("scale_colour_gradient_red works", {
  df <- data.frame(
    x = runif(100),
    y = runif(100),
    z1 = rnorm(100),
    z2 = abs(rnorm(100))
  )
  
  pl <- ggplot2::ggplot(df, ggplot2::aes(x, y)) +
    ggplot2::geom_point(
      ggplot2::aes(color = z2)) +
    scale_colour_gradient_red() +
    theme_neat()
  
  expect_s3_class(pl,'ggplot')
})

test_that("scale_fill_gradient_red works", {
  df <- data.frame(
    x = runif(100),
    y = runif(100),
    z1 = rnorm(100),
    z2 = abs(rnorm(100))
  )
  
  pl <- ggplot2::ggplot(df, ggplot2::aes(x, y)) +
    ggplot2::geom_point(
      ggplot2::aes(fill = z2),
      size = 3,
      shape = 21) +
    scale_fill_gradient_red() +
    theme_neat()
  
  expect_s3_class(pl,'ggplot')
})
