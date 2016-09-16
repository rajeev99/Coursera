#Rajeev Agrawal
#The function below creates cache for the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

#The function below calls makeCacheMatrix send sets the value fot cache.
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    datos<-x$get()
    m<-solve(datos, ...)
    x$setmatrix(m)
    m
}
