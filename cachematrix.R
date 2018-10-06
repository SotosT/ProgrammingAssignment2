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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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
