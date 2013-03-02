#' Find package associated with an environment.
#' 
#' Many environments are associated with a package; this function 
#' attempts to determine that package.
#' 
#' @param env The environment whose name we seek.
#' 
#' @section Details:
#' Environment env would be associated with a package if 
#' topenv(env) is the namespace environment for that package.  Thus 
#' when env is the environment associated with functions inside a 
#' package, or local functions defined within them, packageName 
#' will normally return the package name. 
#'  
#' Not all environments are associated with a package: for example, 
#' the global environment, or the evaluation frames of functions 
#' defined there.  packageName will return NULL in these cases.
#'  
#' @section Value:
#' A length one character vector containing the name of the package, 
#' or NULL if there is no name.
#' 
#' @seealso \code{\link[methods]{getPackageName}} is a more elaborate 
#' function that can construct a name if none is found.
#' 
#' @export
#' @examples
#' packageName() 
#' packageName(environment(mean))
packageName <- function (env = parent.frame()){
    if (!is.environment(env)) 
        stop("'env' must be an environment")
    env <- topenv(env)
    if (exists(".packageName", envir = env, inherits = FALSE)) 
        get(".packageName", envir = env, inherits = FALSE)
    else if (identical(env, .BaseNamespaceEnv)) 
        "base"
    else NULL
}