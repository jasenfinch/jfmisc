test_that("%+% works", {
  expect_equal("fish" %+% "sticks","fishsticks")
})

test_that("%+ % works", {
  expect_equal("fish" %+ % "sticks","fish sticks")
})

test_that("%+_% works", {
  expect_equal("fish" %+_% "sticks","fish_sticks")
})

test_that("%+-% works", {
  expect_equal("fish" %+-% "sticks","fish-sticks")
})
