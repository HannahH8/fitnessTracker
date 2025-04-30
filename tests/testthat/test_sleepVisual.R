test_that("plot_activity returns a ggplot object", {

  p <- sleep_plot(dailySleep, "SleepDate", "TotalTimeInBed", "TotalMinutesAsleep", "TotalSleepRecords")
  expect_s3_class(p, "ggplot")

})
