test_that("exportCSV works", {
  file_path <- paste0(tempdir(),"/test/iris.csv")
  
  exportCSV(iris, file_path)
  
  expect_true(file.exists(file_path))
  unlink(paste0(tempdir(),"/test"),recursive = TRUE)
})

test_that("exportXLSX works", {
  file_path <- paste0(tempdir(),"/test/iris.xlsx")
  
  exportXLSX(iris, file_path)
  
  expect_true(file.exists(file_path))
  unlink(paste0(tempdir(),"/test"),recursive = TRUE)
})
