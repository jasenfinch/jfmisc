test_that("writingChecks works", {
  file_path <- system.file('example.Rmd',package = 'jfmisc')
  
  expect_output(
    writingChecks(file_path),
    '######### Writing Checks #########'
  )
})
