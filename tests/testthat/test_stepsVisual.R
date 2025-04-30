test_that("no errors", {
  p <- steps_plot(dailyActivity, "ActivityDate", "TotalSteps")
  expect_s3_class(p, "ggplot")
})
