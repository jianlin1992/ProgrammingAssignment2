## This is assignmentment two of R-Programming course on Coursera

## This function creates a list that contains a matrix and functions to calculate the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
    
    ## vmatrix is the inverse matrix
    
    vmatrix <- NULL
    
    set <- function(y){
        x <<- y
        vmatrix <- NULL
    }
    
    get <- function() x
    
    setInverseMatrix <- function(y) vmatrix <- y
    
    getInverseMatrix <- function() vmatrix
    
    list(set=set, get=get, getInverseMatrix=getInverseMatrix, setInverseMatrix=setInverseMatrix)
}


## This function returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        ##
        vmatrix <- x$getInverseMatrix()
        if (!is.null(vmatrix)){
            message("Getting Cached Data")
            return(vmatrix)
        }
        
        data <- x$get()
        vmatrix <- solve(data)
        x$setInverseMatrix(vmatrix)
        vmatrix
}
