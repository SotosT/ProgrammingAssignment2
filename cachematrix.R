## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Use the solve() to create the "special" matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
           inv <- NULL
		set <- function(y) {
			x <<- y
			inv <<- NULL
		}
		get <- function() x
		setInverse <- function(solveMatrix) m <<- solveMatrix
		getsInverse <- function() inv
		list(set = set, get = get,
			setInverse = setInverse,
			getInverse = setInverse)
}


## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {

    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Get the matrix from our object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m
}
