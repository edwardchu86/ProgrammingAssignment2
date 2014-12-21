## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL #把s赋值为null
  set <- function(y) {
    x <<- y
    s <<- NULL #set(y)后，x=y,s=null
  }
  get <- function() x   #把x赋值给get
  setsolve <- function(solve) s <<- solve #这里求逆矩阵
  getsolve <- function() s #这里把s复制给getsolve（NULL）
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          s <- x$getsolve() #首先把getsolve赋值给s，如果s不是NULL的话弹出下列提示
  if(!is.null(m)) {
    message("getting cached data")
    return(s) #出现缓存值
  }
  data <- x$get() #把最开始的numberic向量赋值给data
  s <- solve(data, ...)
  x$setsolve(s) #缓存s
  s
}
