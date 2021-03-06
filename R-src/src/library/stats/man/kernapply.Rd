% File src/library/stats/man/kernapply.Rd
% Part of the R package, http://www.R-project.org
% Copyright 1995-2011 R Core Team
% Distributed under GPL 2 or later

\name{kernapply}
\title{Apply Smoothing Kernel}
\alias{kernapply}
\alias{kernapply.default}
\alias{kernapply.ts}
\alias{kernapply.tskernel}
\alias{kernapply.vector}
\description{
  \code{kernapply} computes the convolution between an input sequence
  and a specific kernel.
}
\usage{
kernapply(x, \dots)

\method{kernapply}{default}(x, k, circular = FALSE, \dots)
\method{kernapply}{ts}(x, k, circular = FALSE, \dots)
\method{kernapply}{vector}(x, k, circular = FALSE, \dots)

\method{kernapply}{tskernel}(x, k, \dots)
}
\arguments{
  \item{x}{an input vector, matrix, time series or kernel to be smoothed.}
  \item{k}{smoothing \code{"tskernel"} object.}
  \item{circular}{a logical indicating whether the input sequence to be
    smoothed is treated as circular, i.e., periodic.}
  \item{\dots}{arguments passed to or from other methods.}
}
\note{
  This uses \code{\link{fft}} to perform the convolution, so is fastest
  when \code{NROW(x)} is a power of 2 or some other highly composite
  integer.
}
\value{
  A smoothed version of the input sequence.
}
\author{A. Trapletti}
\seealso{
  \code{\link{kernel}}, \code{\link{convolve}}, \code{\link{filter}},
  \code{\link{spectrum}}
}
\examples{
## see 'kernel' for examples
}
\keyword{ts}
