#' Time difference
#'
#' It does something
#' Source: Kaggle (?)
#' Author: potterzot https://www.kaggle.com/potterzot (?)
#' Reference: https://www.kaggle.com/potterzot/how-much-did-it-rain-ii/features/run/83496
#'
#' @param times let's try what is it
#' @param num_per_segment another argument
#' @return Time (?)
#' @seealso ...
#' @export

am.tdiff <- function(times
                    , num_per_segment = 60) {

  n <- length(times)
  valid_time <- vector(mode="numeric", length = n)
  valid_time[1] <- times[1]
  valid_time[-1] <- diff(times, 1)
  valid_time[n] <- valid_time[n] + num_per_segment - sum(valid_time)
  valid_time <- valid_time / num_per_segment
  valid_time

}
