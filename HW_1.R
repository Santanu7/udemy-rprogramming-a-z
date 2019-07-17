N <- 10000
counter <- 0
for(r in rnorm(N))
{
  if(r >= -1 && r <= 1){
    counter <- counter + 1
  }
}

X_N <- counter/N