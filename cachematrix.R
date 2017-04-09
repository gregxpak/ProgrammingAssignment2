## Put comments here that give an overall description of what your
## functions do

## the function creates a function that sets the value of the matrix and gets the value of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x<<-y
                m<<-NULL
                }
        get<-function() x
        setmatrix<-function(solve) m<<-solve
        getmatrix<-function() m
        list(set=set, get=get
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}


## retrieves the inverse from the cache of the matrix function
cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
                }
        matrix<=x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
