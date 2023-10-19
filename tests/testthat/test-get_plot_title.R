test_that("title works", {
  expect_equal(get_plot_title(10, c(8, 12), .8, c(.6, 1)),
               "Likelihood ratio: 10, range: (8,12)\nPrior odds: 0.8, range: (0.6,1)")
})
