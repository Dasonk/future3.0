\name{rep_len}
\alias{rep_len}
\title{Replicate Elements of Vectors and Lists}
\usage{
  rep_len(x, length.out)
}
\arguments{
  \item{x:}{a vector (of any mode including a list) or a
  factor or (for rep only) a POSIXct or POSIXlt or Date
  object; or an S4 object containing such an object.}

  \item{length.out}{non-negative integer.  The desired
  length of the output vector.  Other inputs will be
  coerced to an integer vector and the first element taken.
  Ignored if NA or invalid.}
}
\description{
  A simplified version of rep for when you want to repeat
  an input to a desired length.  Introduced in 3.0.0 - this
  function has a slight speed advantage compared to rep in
  3.0.0 but not here.
}
\seealso{
  \code{\link[base]{rep}}, \code{\link[base]{rep.int}}
}

