makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL #initialize inverse matrix x
  set <- function(y) {
    x <<- y 
    invm <<- NULL #initialize inverse matrix x if x is changed
  }
  get <- function() x
  setInv <- function(inverse_matrix) invm <<- inverse_matrix
  getInv <- function() invm
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}