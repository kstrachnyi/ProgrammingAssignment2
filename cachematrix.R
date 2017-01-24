## The following two functions are used to cache the inverse of a matrix. 
## This fuction creates a list containing a function to get/ set the value and inverse of the matrix

makeCacheMatrix <- function(x = matrix()) { 
  inv <- NULL 
  set <- function(y) { 
    x <<- y 
    inv <<- NULL 
  } 
  get <- function() x 
  setinverse <- function(inverse) inv <<- inverse 
  getinverse <- function() inv 
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
} 




## The following function returns the inverse of the matrix


cacheSolve <- function(x, ...) { 
  inv <- x$getinverse() 
  if(!is.null(inv)) { 
    message("getting cached data.") 
    return(inv) 
  } 
  data <- x$get() 
  inv <- solve(data) 
  x$setinverse(inv) 
  inv 
} 
