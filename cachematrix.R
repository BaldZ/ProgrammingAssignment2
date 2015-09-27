## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        MatInv <- NULL
        set <- function(y) {
                x <<- y
                MatInv <<- NULL
        }
        get <- function() x
        setInv <- function(inverse) MatInv <<- inverse
        getmean <- function() MatInv
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
