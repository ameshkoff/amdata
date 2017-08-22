#' Outersect (vector XOR)
#'
#' Outersect (vector XOR).
#' Author: @tonybreyal
#' Reference: https://tonybreyal.wordpress.com/2011/11/29/outersect-the-opposite-of-rs-intersect-function/
#'
#' @param x first vector
#' @param y second vector
#' @param ... other vectors (optional)
#' @return Vector containing only unique values (those do not have duplicates in other input vectors)
#' @seealso ...
#' @export

amm.outersect <- function(x, y, ...) {
  big.vec <- c(x, y, ...)
  duplicates <- big.vec[duplicated(big.vec)]
  setdiff(big.vec, unique(duplicates))
}
