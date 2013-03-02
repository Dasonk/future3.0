#' dimnames of an object
#' 
#' Retrieve or set the dimnames of an object.
#'  
#' @param x an R object, for example a matrix, array or data frame.
#' @param sep a character string, used to separate base symbols and 
#' digits in the constructed dimnames.
#' @param base a non-empty list of character vectors.  The list components 
#' are used in turn (and recycled when needed) to construct 
#' replacements for empty dimnames components.  See also the 
#' examples.
#' 
#' @references  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) _The New S Language_.  Wadsworth & Brooks/Cole.
#' @seealso    \code{\link[base]{dimnames}}, \code{\link[base]{rownames}},
#' \code{\link[base]{colnames}}, \code{\link[base]{array}}, \code{\link[base]{matrix}},
#'  \code{\link[base]{data.frame}}.
#' @export
provideDimnames <- function (x, sep = "", base = list(LETTERS)){
    dx <- dim(x)
    dnx <- dimnames(x)
    if (new <- is.null(dnx)) 
        dnx <- vector("list", length(dx))
    k <- length(M <- vapply(base, length, 1L))
    for (i in which(vapply(dnx, is.null, NA))) {
        ii <- 1L + (i - 1L)%%k
        dnx[[i]] <- make.unique(base[[ii]][1L + 0:(dx[i] - 1L)%%M[ii]], 
                                sep = sep)
        new <- TRUE
    }
    if (new) 
        dimnames(x) <- dnx
    x
}
