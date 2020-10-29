## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #makeCacheMatrix
        i <- NULL
        # set a value of x
        set <- function(y) {
          x <<- y
          i <<- NULL
        }
        #get value of x
        get <- function() x
        #set value of inverse to i
        setinverse <- function(inverse) i <<- inverse
        #get value of inverse from i
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        #return the inverse 
        i <- x$getinverse()
        #if inverse is already calculate return it
        if(!is.null(i)) {
          message("getting cached data")
          return(i)
        }
        #else get date and calculate inverse
        data <- x$get()
        i <- solve(data)
        #set inverse
        x$setinverse(i)
        i
}
