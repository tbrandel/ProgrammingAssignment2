## Put comments here that give an overall description of what your
## functions do

## set / get the value of the vector
## set / get the value of the mean


makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## calculate and store the mean to cache for faster access
## first check if computation is stored in cache
## if stored in cache get value, else perform computation the store in cache

cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
 
  i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i        
}
