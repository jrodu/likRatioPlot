test_that("axis breaks work", {
  expect_equal(get_breaks(10, c(8, 12), .8, c(.6, 1)),
               list(x_breaks=c(.6, .8, 1), y_breaks=c(1, 4.8, 8, 12)))
})

