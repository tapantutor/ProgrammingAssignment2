
## makeCacheMatrix creates a list containing a function to

## set the value of the matrix

## get the value of the matrix

## set the value of inverse of the matrix

## get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        tverse <- NULL
        set <- function (y) {
                x <<- y
                tverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) tverse <<- inverse
        getinverse <- function() tverse
        list(set=set, get=get, 
             setinverse=setinverse, 
             getinverse = getinverse)
        }


## The following function calculates the inverse of the special "vector" created with the above function.
## However, it first checks to see if the inverse has already been calculated
## If so, it gets the inverse from the cache and skips the computation. 
## Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setmean function.

cacheSolve <- function(x, ...) {
        tverse <- x$getinverse()
        if(!is.null(tverse)) {
                message("getting cached data")
                return(tverse)
         }
        data <- x$get()
        tverse <- inverse(data,...)
        x$setinverse(tverse)
        tverse
 }
        ## Return a matrix that is the inverse of 'x'
}
