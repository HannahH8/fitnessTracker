test_that("water_intake returns correct value for 'Low'", {
  result <- BMR(300)
  expect_equal(result, 3496.4)
})
