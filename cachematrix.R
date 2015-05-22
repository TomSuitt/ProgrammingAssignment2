## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
