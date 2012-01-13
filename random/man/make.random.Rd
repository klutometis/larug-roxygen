\name{make.random}
\alias{make.random}
\title{Make a linear congruential generator (LCG).}
\usage{
  make.random(m, a, c, seed = as.numeric(Sys.time()))
}
\arguments{
  \item{seed}{The initial seed}

  \item{m}{Modulus}

  \item{a}{Multiplier}

  \item{c}{Increment}
}
\description{
  Make a linear congruential generator (LCG).
}
\seealso{
  Other LCGs: \code{\link{make.knuth.random}},
  \code{\link{make.numerical.recipes.random}},
  \code{\link{make.pathological.random}}
}

