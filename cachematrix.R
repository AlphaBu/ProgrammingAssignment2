## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	yy<-makeCacheMatrix(x)
        m <- yy$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        yy$set(x)
	data <- yy$get()
        m <- solve(data, ...)
        yy$setsolve(m)
        m
}

