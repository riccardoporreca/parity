test_that("integer-like numbers can be coerced to integers", {
  expect_not_coerceable <- function(x) {
    eval(bquote(expect_error(coerce_to_integer(x), "is not an integer")))
  }

  expect_identical(coerce_to_integer(5), 5L)
  expect_identical(coerce_to_integer(-5), -5L)
  expect_identical(coerce_to_integer(0), 0L)
  expect_identical(coerce_to_integer(5.0), 5L)
  expect_identical(coerce_to_integer(5L), 5L)
  expect_identical(coerce_to_integer("5"), 5L)

  expect_not_coerceable(TRUE)
  expect_not_coerceable(FALSE)
  expect_not_coerceable(5.5)
  expect_not_coerceable(5.1)
  expect_not_coerceable("5.5")
  expect_not_coerceable("red panda")
  expect_not_coerceable(as.Date("2020-01-01"))
  expect_not_coerceable(as.POSIXct("2020-01-01 08:49:34", tz = "UTC"))
  expect_not_coerceable(as.raw(1))
})
