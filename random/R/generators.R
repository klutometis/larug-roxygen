##' @include random.R
NULL

##' Make an LCG with a pathological period of length 4.
##' @family LCGs
##' @export
make.pathological.random <-
  function() make.random(10, 7, 7, seed=7)

##' Make an LCG based on the parameters in Numerical Recipes.
##' @family LCGs
##' @export
make.numerical.recipes.random <-
  function() make.random(2**32, 1664525, 1013904223)

##' Make an LCG based on Knuth's heuristics.
##' @family LCGs
##' @export
make.knuth.random <-
  function() make.random(2**64,
                         6364136223846793005,
                         1442695040888963407)
