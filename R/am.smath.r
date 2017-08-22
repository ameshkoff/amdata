#' Test if is whole number
#'
#' Test if the number is the whole number
#'
#' @param x numeric
#' @param threshold numeric: tolerance, threshold
#' @return Logical
#' @seealso ...
#' @export

amm.is.wholenumber <- function(x
                               , threshold = .Machine$double.eps ^ 0.5) {
  abs(x - round(x)) < threshold
}
