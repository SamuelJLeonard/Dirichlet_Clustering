n = 544

mat = matrix(0, nrow = n, ncol = n)
diag(mat) = log(1)
mat = cbind(0, mat)


for(i in 2:n){
  for (j in i:n){
    mat[j, i] = log(j-1) + mat[(j-1), i] + log(1+(1/(j-1))*exp(mat[(j-1), (i-1)] - mat[(j-1), i]))
  }
}


