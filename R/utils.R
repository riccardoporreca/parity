#' Coerce an object to an integer, or error if that's not possible
#'
#' R isn't the best language for strict typing, and it particularly struggles
#' with integers. For example, `is.integer(5)` returns `FALSE`, because `5` is
#' not the same as `5L`. This function will attempt to convert a numeric or a
#' character
#'
#' A simpler (and potentially faster) implementation of this function would use
#' the \code{\link[rlang]{is_integerish}} function.
#'
#' @param x An integer-like value, or a character that represents an integer.
#'
#' @return an integer if possible, or an error if not
#'
#' @keywords internal
coerce_to_integer <- function(x) {
  if (is.character(x)) x <- suppressWarnings(as.numeric(x))
  if (is.numeric(x)) {
    coerced <- suppressWarnings(as.integer(x))
    if (!is.na(coerced) && coerced == x) {
      return(coerced)
    }
  }
  stop(x, " is not an integer")
}





