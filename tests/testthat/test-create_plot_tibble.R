test_that("create tibble works", {
  expect_equal(create_plot_tibble(10, c(8, 12), .8, c(.6, 1)),
               tibble::tibble(x=c(.6, 1), y_min=c(4.8, 8), y_max=c(7.2, 12)))
})
