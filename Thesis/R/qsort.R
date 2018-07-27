qsort <- function(v) {
  if ( length(v) > 1 ) 
  {
    pivot <- (min(v) + max(v))/2.0                            # Could also use pivot <- median(v)
    c(qsort(v[v < pivot]), v[v == pivot], qsort(v[v > pivot])) 
  } else v
}

num <- scan("qsort.txt", what=integer(), quiet=TRUE)
 
vs <- runif(num)
u <- qsort(vs)
print(u)
