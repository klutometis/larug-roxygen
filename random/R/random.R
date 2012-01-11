##' Generate the next number in the cycle by the "mixed congruential
##' method."
##' @param prev Previous random number
##' @param m Modulus
##' @param a Multiplier
##' @param c Increment
##' @return The number random number in the cycle
##' @references \url{http://en.wikipedia.org/wiki/Linear_congruential_generator}
##' @examples
##' ## Pathological example
##' \dontrun{next.random(7, 10, 7, 7)}
next.random <- function(prev, m, a, c)
  (a * prev + c) %% m

##' Make a linear congruential generator (LCG).
##' @param seed The initial seed
##' @param m Modulus
##' @param a Multiplier
##' @param c Increment
##' @return A thunk which generates random numbers
##' @family lcg
make.random <-
  function(seed, m, a, c) {
    function() {
      seed <<- next.random(seed, m, a, c)
      seed
    }
  }
