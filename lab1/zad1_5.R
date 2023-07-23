a <- c(5,1,0,-2,3,0,-1,1,2,4)
b <- c(-1,5,1,0,-2,3,0,-1,1,2,4)
c <- c(0,-1,5,1,0,-2,3,0,-1,1,2,4)
d <- c(5,0,-1,5,1,0,-2,3,0,-1,1,2,4)

f1 <- function(a) {
  
  med <- median(a)
  lwrqrt <- quantile(a, type = 2)[2]
  uprqrt <- quantile(a, type = 2)[4]
  
  list <- c(med, lwrqrt, uprqrt)
  
  return(list)
}

cat('\nmediana a:', f1(a)[1])
cat('\ndolny kwartyl a:', f1(a)[2])
cat('\ngórny kwartyl a:', f1(a)[3])

cat('\n\nmediana b:', f1(b)[1])
cat('\ndolny kwartyl b:', f1(b)[2])
cat('\ngórny kwartyl b:', f1(b)[3])

cat('\n\nmediana c:', f1(c)[1])
cat('\ndolny kwartyl c:', f1(c)[2])
cat('\ngórny kwartyl c:', f1(c)[3])

cat('\n\nmediana d:', f1(d)[1])
cat('\ndolny kwartyl d:', f1(d)[2])
cat('\ngórny kwartyl d:', f1(d)[3])