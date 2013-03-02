\name{provideDimnames}
\alias{provideDimnames}
\title{dimnames of an object}
\usage{
  provideDimnames(x, sep = "", base = list(LETTERS))
}
\arguments{
  \item{x}{an R object, for example a matrix, array or data
  frame.}

  \item{sep}{a character string, used to separate base
  symbols and digits in the constructed dimnames.}

  \item{base}{a non-empty list of character vectors.  The
  list components are used in turn (and recycled when
  needed) to construct replacements for empty dimnames
  components.  See also the examples.}
}
\description{
  Retrieve or set the dimnames of an object.
}
\references{
  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
  _The New S Language_.  Wadsworth & Brooks/Cole.
}
\seealso{
  \code{\link[base]{dimnames}},
  \code{\link[base]{rownames}},
  \code{\link[base]{colnames}}, \code{\link[base]{array}},
  \code{\link[base]{matrix}},
  \code{\link[base]{data.frame}}.
}

