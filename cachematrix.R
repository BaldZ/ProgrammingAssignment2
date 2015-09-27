## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        matInv <- NULL
        set <- function(y) {
                x <<- y
                matInv <<- NULL
        }
        getInv <- function() x
        setInv <- function(inverse) matInv <<- inverse
        get <- function() matInv
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
        matInv <- x$getInv()
        if(!is.null(matIn)) {
                message("getting cached data")
                return(matInv)
        }
        data <- x$get()
        matInv <- solve(data, ...)
        x$setInv(matInv)
        
}
