## cachematrix.R -- R Programming Assignment #2: L Murray

## makeCacheMatrix () builds a set of functions and returns them to the parent
## environment. It's purpose, in conjunction with the cacheSolve() function
## is to optimize system performance when calculating the inverse of a matrix.
## It will cache the results of the solve() function to the parent environment
## so it can be recalled rather than execute the solve() function for 
## the same input matrix multiple times

## input to makeCacheMatrix(): 
##      x       a user defined matrix
##      **ASSUMPTION** input matrix is always invertible

## other data object defined:
##      s       an object to hold the inverse of a matrix using the solve() function
##      initialized to NULL

## four functions defined in makeCacheMatris:
##      set() to assign the values of y and s in the parent environment
##      get() which retrieves the user defined matrix 
##      setSolve() to assign the result of the solve() function to s
##      getSolve() to retrieve the result stored in s

## output from makeCacheMatrix()
##      list()  a list which contains a named element for each of the four
##              functions 
##              list() is returned to the parent environment

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setSolve <- function(solve) s <<- solve
        getSolve <- function() s
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}


## cacheSolve() is designed to populate and/or retrieve the result of the solve()
## function from an object of type makeCacheMatrix()
## **cacheSolve() cannot run without makeCacheMatrix()**

## cacheSolve() first tries to retrieve a solve() s from makeCacheMatrix()

## if the value of getSolve() is not NULL, that means there is a cached solve() 
## value which is then returned and displayed to the user, along with a "getting
## cached data" message

## if the value is NULL, cacheSolve() retrieves the input matrix using get(),
## calculates a solve() s, uses the setSolve() function to set the solve in
## the makeCacheMatrix and returns the solve() s to the parent environment



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getSolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setSolve(s)
        s
}
