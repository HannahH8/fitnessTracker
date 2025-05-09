% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intensity_visual.R
\name{intensity_plot}
\alias{intensity_plot}
\title{Activity Intensity Visual Plot
This plot function is intended for medium - smaller sets of data}
\usage{
intensity_plot(data, date, intensities, intensity_levels)
}
\arguments{
\item{data}{dataset}

\item{date}{datasets dates}

\item{intensities}{datasets intensity values}

\item{intensity_levels}{datasets intensity levels}
}
\value{
returns intensity plot
}
\description{
Activity Intensity Visual Plot
This plot function is intended for medium - smaller sets of data
}
\examples{
# Plot Intensity
intensity_plot(dailyActivity, "ActivityDate", "DailyIntensity", "intensity_level")

}
