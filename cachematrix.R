## MakeCachematrix creates a list containing a function to
1. set the value of the function 
2. get the value of matrix
3. set the value of the inverse of the matrix 
4. get the value of the inverse of the matrix 


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL 
  set<- function(y) {
  x <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get= get, setinverse= setinverse, getinverse= getinverse)
}



The following function returns the inverse of the matrix.
It first checks if inverse of the matrix has already been computed. If not, it
computes the inverse, sets the value in the cache setinverse function. 

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
        
}
