# Knowing the data types will help you to identify the most appropriate
# visualization types and algorithms that can be applied.
sapply(student_performance_dataset,class)
# Dimensions refer to the number of observations (rows) and the number of
# attributes/variables/features (columns)
dim(student_performance_dataset)
## \<Measuring the Kurtosis\>
if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")
sapply(student_performance_dataset[, 4],  kurtosis, type = 2)
