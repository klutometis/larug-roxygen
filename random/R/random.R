##' @translate en de
NULL

##' Linear congruential generators
##'
##' Linear congruential generators with some Knuthian and other
##' specializations
##'
##' @name random-package
##' @title Linear congruential generators
##' @docType package
##' @references \url{http://en.wikipedia.org/wiki/Linear_congruential_generator}
##' @examples
##' r <- make.numerical.recipes.random()
##' replicate(10, r())
NULL


##' Generate the next number in the cycle by the mixed congruential
##' method.
##' @param prev Previous random number
##' @param m Modulus
##' @param a Multiplier
##' @param c Increment
##' @return The next random number in the cycle
##' @export
next.random <- function(prev, m, a, c)
  (a * prev + c) %% m

##' Make a linear congruential generator (LCG).
##' @param seed The initial seed
##' @inheritParams next.random
##' @family LCGs
##' @export
make.random <-
  function(m, a, c, seed=as.numeric(Sys.time())) {
    function()
      withVisible(seed <<- next.random(seed, m, a, c))$value
  }
