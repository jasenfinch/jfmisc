test_that("a suitable parallel plan generated", {
  expect_message(suitableParallelPlan())
})

test_that("a suitable parallel plan generated when strategy specified as a function", {
  expect_message(suitableParallelPlan(strategy = future::multisession))
})

test_that("a suitable parallel plan generated when suitable workers exceeds the maximum available", {
  expect_message(suitableParallelPlan(RAM_per_worker = 0.1))
})