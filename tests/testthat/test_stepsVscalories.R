test_that("no errors", {
  p <- steps_vs_calories(dailyActivity, "TotalSteps", "Calories")
  expect_s3_class(p, "ggplot")
})
