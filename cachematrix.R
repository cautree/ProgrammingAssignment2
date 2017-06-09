## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL    ## initialize inv as NULL; will hold value of matrix inverse
  set <- function(y) {
    x <<- y
    inv <<- NULL  ##
  }
  get <- function() {
    x
  }
  setInverse <- function(inverse) {   # this is the set function
    inv <<- inverse
    }
  getInverse <- function() {         # this is the get funciton
    inv
    }
  list(set = set,                    # this is what returned
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse() 
  if (!is.null(inv)) {             # if not null, return the cached data
    message("getting cached data")
    return(inv)         
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)      # set if that is new
  return (inv)
}
