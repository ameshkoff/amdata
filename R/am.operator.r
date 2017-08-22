#' Sum excluding NAs
#'
#' Sum two numbers excluding NAs. Not vectorized
#'
#' @param x numeric
#' @param y numeric
#' @return Numeric
#' @seealso `%*na%`
#' @export

`%+na%` <- function(x, y) {
  ifelse(is.na(x), y, ifelse(is.na(y), x, x+y))
}

#' Multiple excluding NAs
#'
#' Multiple two numbers excluding NAs. Not vectorized
#'
#' @param x numeric
#' @param y numeric
#' @return Numeric
#' @seealso `%+na%`
#' @export

`%*na%` <- function(x,y) {
  ifelse(is.na(x), y, ifelse(is.na(y), x, x*y))
}

#' Asymmetric matching two vectors
#'
#' Asymmetric matching two vectors
#'
#' @param x vector
#' @param srch vector
#' @return Logical vector of the length of x
#' @seealso `%+na%`, `%*na%`
#' @export
#' @examples
#' `%fin%`(c("a"," b","c","d","e"),c("a","d","e"))

`%fin%` <- function(x, srch) {
  fmatch(x, srch, nomatch = 0L) > 0L
}


