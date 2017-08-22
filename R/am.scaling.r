#' Scale to 0-1 range
#'
#' Scale numeric vector to 0-1 range.
#' Source: StackOverflow
#' Author: Andrie http://stackoverflow.com/users/602276/andrie
#' Reference: http://stackoverflow.com/questions/5468280/scale-a-series-between-two-points
#'
#' @param x numeric
#' @return Numeric
#' @seealso `%*na%`
#' @export

am.range01 <- function(x){
  (x - min(x)) / (max(x) - min(x))
}
