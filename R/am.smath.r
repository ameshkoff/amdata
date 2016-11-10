#' Test if is whole number
#'
#' Test if the number is the whole number
#'
#' @param x numeric
#' @param tol numeric: tolerance, treshold
#' @return Logical
#' @seealso ...
#' @export

amm.is.wholenumber <- function(x
                               , tol = .Machine$double.eps^0.5) {
  abs(x - round(x)) < tol
}
