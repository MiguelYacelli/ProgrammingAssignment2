## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
  set <- function(y){
    x<<- y
    inversa <- NULL
  }
  get <- function(){x}
  setinversa <- function(inversacalculada){inversa <<- inversacalculada}
  getinversa<-function(){inversa}
  list(set=set, get=get,setinversa=setinversa,getinversa=getinversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inversa <- x$getdata()
  if(is.null(inversa)){message("Obteniendo cach�")
    return(inversa)
    }
    data<-x$get()
      inversa <- solve(data,...)
      x$setinversa(inversa)
    inversa    ## Return a matrix that is the inverse of 'x'
}
