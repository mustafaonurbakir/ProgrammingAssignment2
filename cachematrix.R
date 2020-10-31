## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates and returns a list of functions
## used by cacheSolve to get or set the inverted matrix in cache

makeCacheMatrix <- function(x = matrix()) {
  # stores the cached value and initialize to NULL
  cache  <- NULL
  
  # create the matrix in the working environment
  set <- function(y){
    x <<- y
    cache  <<- NULL
  }
  
  # value of matrix
  get <- function() x
  
  # invert the matrix 
  # store in cache
  setInverse <- function(inverse) cache <<- inverse
  
  # get the inverted matrix from cache
  getInverse <- function() cache 
  
  # return the functions to the working environment
  list(set = set, get = get, 
    setInverse = setInverse, 
    getInverse = getInverse)
}


## cacheSolve calcluates the inverse of the matrix created in makeCacheMatrix
## inverted value is stored in cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cache <- x$getInverse()
  
  if(!is.null(cache)){
    message("getting cached data")
    
    # print matrix in the console
    return(j)
  }
  
  # create matrix
  createdMatrix <- x$get()
  
  # set and return inverse of matrix
  cache <- solve(createdMatrix, ...)
  
  # set inverted matrix in cache
  x$setInverse(cache)
  
  # print 
  return(cache)
}

