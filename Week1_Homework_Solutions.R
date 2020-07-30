# 1) ----
x <- 39
y <- 22
z <- x-y
z


# 2) ----
vec1 <- c(2, 5, 8, 12, 16)
vec2 <- 5:9 ; c(5:9) ; seq(5,9)
vec2 - vec1


# 3) ----
numbers <- seq(from = 2, by = 3, length.out = 100)
numbers[c(5,10,15,20)]
numbers[10:30] ; numbers[c(10:30)]


# 4) ----
x <- c(4,6,5,7,10,9,4,15)
x < 7


# 5) ----
p <- c(seq(1,9))
q <- c(11:19)
data.frame(p,q)


# 6) ----
fname <- 'James'
lname <- 'Bond'
paste(fname, lname)

print(paste(fname, lname))
print(paste(fname, lname, sep = ' '))


# 7) ----
student_df <- data.frame(name=c('Sue', 'Eva', 'Henry', 'Jan'),
                         sex = c('f','f','m','m'),
                         years = c(21,31, 29, 19))

ifelse(student_df$sex=='m' & student_df$years<20,
       'T', 
       'F') -> student_df$male_teen

ifelse(test = (student_df$sex=='m' & student_df$years<20),
       yes = "T",
       no = 'F')

student_df

student_df %>% 
  select(years) %>% 
  filter(years>25)





