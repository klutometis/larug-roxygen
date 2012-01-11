\name{make.random}
\alias{make.random}
\title{Make a linear congruential generator (LCG).}
\usage{
  make.random(seed, m, a, c)
}
\arguments{
  \item{seed}{The initial seed}

  \item{m}{Modulus}

  \item{a}{Multiplier}

  \item{c}{Increment}
}
\value{
  A thunk which generates random numbers
}
\description{
  Make a linear congruential generator (LCG).
}

