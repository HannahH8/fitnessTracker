test_that("No errors", {

  result <- water_intake(230, "Low")
  expect_equal(result, 115)

})
