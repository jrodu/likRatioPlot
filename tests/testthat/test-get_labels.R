test_that("labels work", {
  expect_equal(get_labels(get_breaks(10, c(8, 12), .8, c(.6, 1))),
               list(x_labels=c(.6, .8, 1), y_labels=c(1, 4.8, 8, 12)))
})

test_that("rounding works", {
  expect_equal(get_labels(get_breaks(10.151, c(8.643, 12.245), .82452, c(.624, 1.21451)), 3),
               list(x_labels=c(0.624, 0.825, 1.215), y_labels=c(1.000, 5.393, 8.370, 14.872)))
})
