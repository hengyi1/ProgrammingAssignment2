## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## This function is creating a object that store a matrix and caches its inverse.
## This function tries to caching the inverse of matrix and aviod repeating the 
## calculation by couputer.

makeCacheMatrix <- function(x = matrix()) {
        in<-NULL
        set<-function(y) {
                x<<-y
                in<<-NULL
        }
        get<-function() x
        setinverse<-function(inverse) in<<-inverse
        getinverse<-function() in
        list(set=set,
        get=get,
        setinverse=setinverse,
        getinverse=getinverse)
}

## This function calculates the inverse of the matrix created by 
## makeCacheMatrix function. If there is an inverse for the matrix, it should 
## retrive the inverse from the cache.
                               
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        in<-x$getinverse()
        if(!is.null(in)){
            message('getting cached data')
            return(in)
        }
        data<-x$get()
        in<-solve(data,...)
        x$setinverse(in)
        in

}
