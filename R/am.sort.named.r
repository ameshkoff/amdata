#' Test if is whole number
#'
#' Test if the number is the whole number
#'
#' @param vc.v vector to be named
#' @param tol vector of names
#' @param qnt numeric length of vector to be returned (You may cut vector to less length if you prefer)
#' @return Logical
#' @seealso ...
#' @export

amm.sort.named <- function(vc.v, vc.n, qnt = NA) {

  if (is.na(qnt)) {
    qnt <- length(vc.v)
  }
  rtrn <- setNames(vc.v, as.character(vc.n))
  rtrn <- sort(rtrn, decreasing = TRUE)[1:qnt]
  rtrn <- names(rtrn)
  rtrn <- paste(rtrn, collapse = " ")

  rtrn
}
