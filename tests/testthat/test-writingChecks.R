test_that("writingChecks works", {
  file_path <- system.file('example.Rmd',package = 'jfmisc')
  
  expect_output(
    writingChecks(file_path),
    '######### Writing Checks #########'
  )
})

test_that('writingChecks errors if non .Rmd file specified',{
  expect_error(writingChecks('incorrect.R'))
})

test_that('writingChecks errors if file does not exist',{
  expect_error(writingChecks('incorrect.Rmd'))
})
