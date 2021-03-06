#' Bootstrap helper function
#'
#' To be used as a parameter inside \code{boot::boot}, which 'generates
#' bootstrap replicates of a statistic', the statistic in this case is the mean
#' zipf_rtg in the dataframe of ratings returned by \link{zipf_hcp}.
#'
#' @details The dataframe to be used is inside a list, so either extract the
#' dataframe and give it its own name, or reference it using '$ratings'.
#'
#' @param data dataframe
#' @param index indexes
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(boot)
#' # assume we have called zipf_hcp and the returned list is called "zipf"
#' # to use the mean_rating within boot::boot function:
#' boot(data = zipf$ratings, statistic = mean_rating, R = 1000)
#' }
mean_rating <- function(data, index) {

    with(data[index, ], mean(zipf_rtg, na.rm = TRUE))

}
