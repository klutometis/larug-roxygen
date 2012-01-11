##' @include random.R
NULL

##' Make an LCG with a pathological period of length 4.
##' @inheritParams make.random
##' @family lcg
make.pathological.random <-
  function(seed) make.random(seed, 10, 7, 7)

##' Make an LCG based on the parameters in Numerical Recipes.
##' @inheritParams make.random
##' @family lcg
make.numerical.recipes.random <-
  function(seed) make.random(seed, 2**32, 1664525, 1013904223)

##' Make an LCG based on Knuth's heuristics.
##' @inheritParams make.random
##' @family lcg
make.knuth.random <-
  function(seed) make.random(seed,
                             2**64,
                             6364136223846793005,
                             1442695040888963407)
