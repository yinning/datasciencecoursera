cacheInv <- function(x, ...) {
  invm <- x$getInv()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(data)
  x$setInv(invm)
  invm
}