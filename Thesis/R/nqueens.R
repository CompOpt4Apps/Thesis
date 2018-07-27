# Brute force, see the "Permutations" page for the next.perm function
next.perm <- function(p) {
  n <- length(p)
  i <- n - 1
  r = T
  for (i in seq(n - 1, 1)) {
    if (p[i] < p[i + 1]) {
      r = F
      break
    }
  }
 
  j <- i + 1
  k <- n
  while (j < k) {
    x <- p[j]
    p[j] <- p[k]
    p[k] <- x
    j <- j + 1
    k <- k - 1
  }
 
  if(r) return(NULL)
 
  j <- n
  while (p[j] > p[i]) j <- j - 1
  j <- j + 1
 
  x <- p[i]
  p[i] <- p[j]
  p[j] <- x
  return(p)
}
 
print.perms <- function(n) {
  p <- 1:n
  while (!is.null(p)) {
    cat(p, "\n")
    p <- next.perm(p)
  }
}

safe <- function(p) {
  n <- length(p)
  for (i in seq(1, n - 1)) {
    for (j in seq(i + 1, n)) {
      if (abs(p[j] - p[i]) == abs(j - i)) return(F)
    }
  }
  return(T)
}
 
queens <- function(n) {
  p <- 1:n
  k <- 0
  while (!is.null(p)) {
    if(safe(p)) {
      cat(p, "\n")
      k <- k + 1
    }
    p <- next.perm(p)
  }
  return(k)
}

num <- scan("nqueens.txt", what=integer(), quiet=TRUE)
 
queens(num)
# 1 5 8 6 3 7 2 4 
# ...
# 92
