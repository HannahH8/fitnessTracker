test_that("plot_activity returns a ggplot object", {
  p <- intensity_plot(dailyActivity, "ActivityDate", "DailyIntensity", "intensity_level")
  expect_s3_class(p, "ggplot")
})
