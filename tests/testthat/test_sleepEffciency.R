test_that("water_intake returns correct value for 'Low'", {
  result <- sleep_efficiency(320,450)
  expect_equal(result, 71.11)
})
