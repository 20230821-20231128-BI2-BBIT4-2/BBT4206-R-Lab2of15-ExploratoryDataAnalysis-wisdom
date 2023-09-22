
if (!is.element("renv", installed.packages()[, 1])) {
  install.packages("renv", dependencies = TRUE)
}
require("renv")

renv::init()

renv::restore()

library(readr)

StudentPerformanceDataset <- read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.csv")
View(StudentPerformanceDataset)

dim(StudentPerformanceDataset)

sapply(StudentPerformanceDataset, class)

StudentPerformanceDataset_freq <- StudentPerformanceDataset$testing_and_active_recall
cbind(frequency = table(StudentPerformanceDataset_freq),
      percentage = prop.table(table(StudentPerformanceDataset_freq)) * 100)

StudentPerformanceDataset_chas_mode <- names(table(StudentPerformanceDataset$testing_and_active_recall))[
  which(table(StudentPerformanceDataset$testing_and_active_recall) == max(table(StudentPerformanceDataset$testing_and_active_recall)))
]
print(StudentPerformanceDataset_chas_mode)

summary(StudentPerformanceDataset)

### Perform ANOVA on *StudentPerformanceDataset*

StudentPerformanceDataset_one_way_anova <- aov(`TOTAL = Coursework TOTAL + EXAM (100%)` ~ `Coursework TOTAL: x/40 (40%)` + `EXAM: x/60 (60%)`, data = StudentPerformanceDataset)
summary(StudentPerformanceDataset_one_way_anova)

if (!is.element("Amelia", installed.packages()[, 1])) {
  install.packages("Amelia", dependencies = TRUE)
}
require("Amelia")

missmap(StudentPerformanceDataset, col = c("red", "grey"), legend = TRUE)

if (!is.element("ggcorrplot", installed.packages()[, 1])) {
  install.packages("ggcorrplot", dependencies = TRUE)
}
require("ggcorrplot")
ggcorrplot(cor(StudentPerformanceDataset[, 90:99]))
