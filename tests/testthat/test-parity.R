test_that("parity returns correct results", {
  expect_equal(parity(3), "odd")
  expect_equal(parity(8), "even")
  expect_equal(parity(9.0), "odd")
  expect_equal(parity(2000L), "even")
  expect_equal(parity(-12), "even")
  expect_equal(parity(0), "even")
})
