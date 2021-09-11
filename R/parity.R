#' Advanced algorithm for determining if a number is odd or even
#'
#' @inheritParams is_even
#'
#' @return character, one of "even" or "odd"
#'
#' @examples
#' parity(3) # odd
#' parity(8) # even
#' parity(-12) # odd
#' parity(0) # even
#'
#' @export
parity <- function(int) {
  if (is_even(int)) "even" else "odd"
}

#' Determine if a number is even
#'
#' @param int Integer, or number that can be coerced to integer
#'
#' @return logical
#'
#' @export
is_even <- function(int) {
  int <- coerce_to_integer(int)
  as.integer(int) %% 2 == 0
}

#' @rdname is_even
#' @export
is_odd <- function(int) {
  !is_even(int)
}
