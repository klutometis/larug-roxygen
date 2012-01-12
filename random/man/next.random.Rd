\name{next.random}
\alias{next.random}
\title{Generieren Sie die nächste Zahl in den Zyklus der &quot;mixed Kongruenz-Methode.&quot;}
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
  Generieren Sie die nächste Zahl in den Zyklus der
  &quot;mixed Kongruenz-Methode.&quot;
}
\examples{
## Pathological example
\dontrun{next.random(7, 10, 7, 7)}
}
\references{
  \url{http://en.wikipedia.org/wiki/Linear_congruential_generator}
}

