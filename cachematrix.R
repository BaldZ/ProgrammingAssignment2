## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## x needs to be square invertible matrix
## which is really a list containing a function to
## 1.set the value of the Matrix
## 2.get the value of the Matrix
## 3.set the value of the inverse of the Matrix
## 4.get the value of the inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
        matInv <- NULL
        set <- function(y) {
                x <<- y
                matInv <<- NULL
        }
        get <- function() matInv
        getInv <- function() x
        setInv <- function(inverse) matInv <<- inverse
        list(set = set,
             get = get,
             setInv = setInv,
             getInv = getInv)
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
        matInv <- x$getInv()
        if(!is.null(matInv)) {
                ## Return the cached Inverse
                message("getting cached data")
                return(matInv)
        }
        ## Calculate the inverse
        data <- x$get()
        matInv <- solve(data, ...)
        
        ## Cache the inverse
        x$setInv(matInv)
        matInv
}
