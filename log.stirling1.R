##  This code generates a 544 by 544 table 'mat' in which the entry (i, j) is log(Stiring1(i, j))
##  Because Stirling1(i, j) does not exist for j > 1, only the lower triangle of this matrix is valid


  n = 544
  mat = matrix(0, nrow = n, ncol = n)
  diag(mat) = log(1)
  mat = cbind(log(0), mat)
  
  
  for(i in 2:n){
    for (j in i:n){
      mat[j, i] = log(j-1) + mat[(j-1), i] + log(1+(1/(j-1))*exp(mat[(j-1), (i-1)] - mat[(j-1), i]))
    }
  }

  mat = mat[ , -1]