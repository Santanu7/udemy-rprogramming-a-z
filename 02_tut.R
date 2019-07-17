while(TRUE)
{
  print("Hello")
}

counter <- 1

while(counter < 12)
{
  print(counter)
  counter <- counter + 1
}

for(i in 1:5)
{
  print("Hello R")
}

x <-rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
}else if(x >= -1){
    answer <- "Between"
  }else{
  
  answer <- "less than 1"
  }

name <- "Bob"
surname <- "Dilon"
result <- paste(name,surname)



