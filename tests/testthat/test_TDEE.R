test_that("No errors", {

  result <- TDEE(230, "Low")
  expect_equal(result, 3636.412)

})
