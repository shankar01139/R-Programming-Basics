  # Age vector
age <- c(25, 35, 50, 20, 30)
# Salary vector
salary <- c(200000, 1200000, 2000000, 10000, 2500)
# Data frame created using age and salary
df <- data.frame( "Age" = age, "Salary" = salary, stringsAsFactors = FALSE)
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
# Note df[2]
dfNorm <- as.data.frame(lapply(df[2], normalize))
dfNorm
# Note df["Salary"]
dfNorm <- as.data.frame(lapply(df["Salary"], normalize))
dfNorm
dfNormZ <- as.data.frame( scale(df[1:2] ))
dfNormZ
DecScale <- function(x) {
  MaxSalary <- max(salary)
  a = x/MaxSalary
  return(a)
}
dfNormZ <- as.data.frame(lapply(df[2], DecScale))
dfNormZ