##' @include next.random.R
NULL

##' Make a random number generator.
##' @param seed The initial seed
##' @param m Modulus
##' @param a Multiplier
##' @param c Increment
##' @return A thunk which generates random numbers
make.random <-
  function(seed, m, a, c) {
    function() {
      seed <<- next.random(seed, m, a, c)
      seed
    }
  }

##' Make a random-number generator with a pathological period
##' (i.e. 4).
##' @inheritParams make.random
##' @import functional
make.pathological.random <-
  function(seed) make.random(seed, 7, 10, 7, 7)
