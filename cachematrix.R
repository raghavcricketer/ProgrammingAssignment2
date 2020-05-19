## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{  j <- NULL
set <- function(y)
{
  x <<- y#the sign used here assigns a value from another environment
  j <<- NULL
}
get <- function()x#here we get matrix
setInverse <- function(inverse) j <<- inverse#we set inverse here
getInverse <- function() j #we get inverse here
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)#we store everything here to call on next function
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{ j <- x$getInverse()
if(!is.null(j))#we run this first to avoid recalculating an already existing answer
{
  message("getting cached data")
  return(j)
}
mat <- x$get()#we get the matrix here
j <- solve(mat,...)#this calculates the inverse
x$setInverse(j)#set the new inverse here
j#return a matrix that is inverse of 'x'
        ## Return a matrix that is the inverse of 'x'
}
