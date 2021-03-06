% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mean_rating.R
\name{mean_rating}
\alias{mean_rating}
\title{Bootstrap helper function}
\usage{
mean_rating(data, index)
}
\arguments{
\item{data}{dataframe}

\item{index}{indexes}
}
\description{
To be used as a parameter inside \code{boot::boot}, which 'generates
bootstrap replicates of a statistic', the statistic in this case is the mean
zipf_rtg in the dataframe of ratings returned by \link{zipf_hcp}.
}
\details{
The dataframe to be used is inside a list, so either extract the
dataframe and give it its own name, or reference it using '$ratings'.
}
\examples{
\dontrun{
library(boot)
# assume we have called zipf_hcp and the returned list is called "zipf"
# to use the mean_rating within boot::boot function:
boot(data = zipf$ratings, statistic = mean_rating, R = 1000)
}
}

