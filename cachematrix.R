makeCacheMatrix <- function(m = matrix(NA,2,2)){
  r <<- matrix(NA,2,2)
set <- function(y){
  m <<- y
  r <<- matrix(NA,2,2)
}
get <- function() m
setrev <- function(solv) r <<- solv
getrev <- function() r
list(set = set, get = get,
     setrev = setrev,
     getrev = getrev)
}

cacheSolve <- function(m,...){
  r <- m$getrev()
  if(!all(is.na(r))) {
    message("getting cached data")
    return(r)
  }  
  data <- m$get()
  r <- solve(data, ...)
  m$setrev(r)
  r
}
