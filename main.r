# 1
# Load Data
data("mtcars")
# Showing first few rows
head(mtcars)
# Shwoing structure of dataset
str(mtcars)

# 2
# Print is like head() but shows more rows
print(mtcars)

# Gives summary stats for each variable
summary(mtcars)

# Make a plot comparing horspower to miles per gallon
plot(mtcars$hp, mtcars$mpg)

# 3
# Creating S3 object 
s3_obj <- list(name = "Chance", age = 22, GPA = 3.8)
# Giving object a class
class(s3_obj) <- "student_s3"

# Create a print method
print.student_s3 <- function(x, ...) {
  cat("Student Name:", x$name, "\n")
  cat("Age", x$age, "\n")
  cat("GPA", x$GPA, "\n")
}

# Test created method
print(s3_obj)

# Create S4 object
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Chance", age = 22, GPA = 3.8)

setMethod(
  "show",
  "student_s4",
  function(object) {
    cat("Student Name:", object@name, "\n")
    cat("Age:", object@age, "\n")
    cat("GPA:", object@GPA, "\n")
  }
)
s4_obj
