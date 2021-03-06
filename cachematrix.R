#Write the following functions:
# 1.makeCacheMatrix: This function creates a special 'matrix' object
#    can cache its inerse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <-- NULL
    }
    
    get <- function()x
    setinverse<- function(inverse) m <<- inverse
    getinverse <- function() m 
    
    list(set=set, get=get, setinverse= setinverse, getinverse=getinverse)
}


## 2. cacheSolve: This function computes the inverse of the special 'matrix' 
#       returned by makeCacheMatrix above. If the inverse has already been 
#       calculated (and the matrix has not changed) then the cachesolve should 
#       retreive the invers from the cache.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if (!is.null(m)){
        message('getting cached data')
        return(m)
    }
    
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}