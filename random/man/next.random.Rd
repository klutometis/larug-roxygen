\name{next.random}
\alias{next.random}
\title{Generate the next number in the cycle by the "mixed congruential
method."}
\usage{
  next.random(prev, m, a, c)
}
\arguments{
  \item{prev}{Previous random number}

  \item{m}{Modulus}

  \item{a}{Multiplier}

  \item{c}{Increment}
}
\value{
  The number random number in the cycle
}
\description{
  Generate the next number in the cycle by the "mixed
  congruential method."
}
\examples{
## Pathological example
\dontrun{next.random(7, 10, 7, 7)}
}
\references{
  \url{http://en.wikipedia.org/wiki/Linear_congruential_generator}
}

