library(dplyr)
set.seed(123)
data <- data.frame(random = rnorm(50))

data[1]         #output is dataframe
data[1][5]      #error, here we select column since dataframe does not have 5th column
data[1][5,]     #output is number, here we select row

data[,1]        #output is vector
data[,1][5]     #same output

data[[1]]       #output is vector 
data[[1]][5]    #same output, here we select by index of a vector
                #easier to work with and use with 'for' loop

data['random']  #returns dataframe
data[['random']]#returns vector

#How to select every value ----
for (i in 1:50){
  data[[1]][i] %>% print()
}





#How to select previous value ----
for (i in 1:nrow(data)){
  data[[1]][i-1] %>% print()
}





# 1) ----
for (r in 1:50){
  data$a[r] <- ifelse(data$random[r] > data$random[r-1],
                           1,
                           0) 
}

data$a[15] <- ifelse(data$random[15] > data$random[15-1],
                      1,
                      0)






# 2) ----
for (r in 1:50){
  data$b[r] <- ifelse(data$random[r] > sum(data$random),
                           1,
                           0) 
}




# 3) ---- 
for (r in 1:50){
  data[["c"]][r] <- ifelse((data[[1]][r] + data[[1]][r-1]) > sum(data[[1]]),
                           1,
                           0) 
}



# 4) ----
for (r in 1:50){
  data[["d"]][r] <- ifelse(abs(data[[1]][r]) > abs(data[[1]][r-1]),
                           1,
                           0) 
}


# 5) ----
for (r in 1:50){
  data[["e"]][r] <- ifelse(abs(data[[1]][r]) > sum(data[[1]]),
                           1,
                           0) 
}
# 6) ----
for (r in 1:50){
  data[["f"]][r] <- ifelse((abs(data[[1]][r]) + abs(data[[1]][r-1])) > sum(data[[1]]),
                           1,
                           0)
}
# 7) ----
for (r in 1:50) {
  data[["n"]][r] <- sum(data[r,2:7])
}


data$n[r] <- sum(data[r,2:7])

data$n <- sum(data$a, data$b, data$c, data$d, data$e, data$f)

data$n <- data$a + data$b




































