#' Advanced algorithm for determining if a number is odd or even
#'
#' @param int Integer, or number that can be coerced to integer
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
  if (as.integer(int) %% 2 == 0) "even" else "odd"
}
