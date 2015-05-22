## These functions will take an input of a matrix and assume it can be inversed
## It will take the inverse and put it in cache, and if the same matrix
## is entered again, it will display the cached version of the matrix

## This function will take in the matrix and cache the matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
  
  mtx <- NULL
  
  setmtx <- function(y) {
    x <<- y
    mtx <<- NULL
   
  }
  
  getmtx <- function() x
  
  setinverse <- function(solve) mtx <<- solve
  
  getinverse <- function() mtx
  
  list(setmtx = setmtx, getmtx = getmtx,
       setinverse = setinverse,
       getinverse = getinverse)

}


## This function will take the input of a matrix and determine if we 
## Have the matrix and its inverse cached, and if so, return that cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  mtx <- x$getinverse()
  
  if(!is.null(mtx)) {
      message("getting cached data for inverse of entered matrix")
      return(mtx)
  }
  
  data <- x$getmtx()
  
  mtx <- solve(data, ...)
  
  x$setinverse(mtx)
  
  mtx
}
