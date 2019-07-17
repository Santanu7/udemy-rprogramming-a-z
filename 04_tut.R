Salary
Games
MinutesPlayed

#matrix(),rbind(), cbind()

?matrix
mydata <- 1:20
mydata

A <- matrix(mydata,4,5)
A
A[2,3]

B <- matrix(mydata,4,5,byrow = T)
B
B[2,5]

r1 <- c("I","am","happy")
r2 <- c("What","a","day")
r3 <- c(1,2,3)

C <- rbind(r1,r2,r3)
C

c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D

Charlie <- 1:5
Charlie

names(Charlie) <- c("a","b","c","d","e")
Charlie

Charlie["d"]

names(Charlie) <- NULL
Charlie

#naming matrix dimensions
temp.vec <- rep(c("a","b","zZ"),each = 3)
temp.vec

Bravo <- matrix(temp.vec,3,3)
Bravo

rownames(Bravo) <- c("How","are","you?")
Bravo

colnames(Bravo) <- c("X","Y","Z")
Bravo

Bravo["are","Y"]

rownames(Bravo) <- NULL
Bravo


Games
rownames(Games)
colnames(Games)
Games["LeBronJames","2012"]

FieldGoals

round(FieldGoals / Games,1)


round(MinutesPlayed/Games)

round(FieldGoalAttempts/FieldGoals)

?matplot

matplot(FieldGoals)

FieldGoals

t(FieldGoals)

matplot(t(FieldGoals/Games), type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend = Players,pch = 15:18, col = c(1:4,6),horiz = F)


matplot(t(FieldGoals/FieldGoalAttempts), type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend = Players,pch = 15:18, col = c(1:4,6),horiz = F)


matplot(t(Salary/Points), type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend = Players,pch = 15:18, col = c(1:4,6),horiz = F)

x <- c("a","b","c","d","e")
x
x[c(1,5)]
x[1]

Games
Games[1:3,6:10]

Games[c(1,10),]
Games[,c("2008","2009")]

Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,5]
# To keep matrix as matrix, not turn to vectors
Games[1,,drop=F]
Games[1,5,drop=F]
# Tutorial - Creating Your First Function
myplot <- function(data,rows=1:10){
  Data <- data[rows,,drop=F] 
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft",inset = 0.01,legend = Players[rows],pch = 15:18, col = c(1:4,6),horiz = F)
}
myplot(MinutesPlayed/Games,3)

# 036 Basketball Insights

myplot(Games)
#Salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

#In Game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

# Interesting Observations
myplot(MinutesPlayed/Games)
myplot(Games)

# Time is valuable
myplot(FieldGoals/MinutesPlayed)

#Player style
myplot(Points/ FieldGoals)
    