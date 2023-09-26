# Business Intelligence Lab Submission Markdown

<Specify your name here> <Specify the date when you submitted the lab>

-   [Student Details](#student-details)
-   [Setup Chunk](#setup-chunk)
-   [\<Provide an Appropriate Title Here\>](#provide-an-appropriate-title-here)
    -   [\<You Can Have a Sub-Title Here\>](#you-can-have-a-sub-title-here)

# Student Details {#student-details}

+---------------------------------------------------+--------------------------------------------------------------+
| **Student ID Numbers and Names of Group Members** | \<134455-Arnold Owoko\>                                      |
|                                                   |                                                              |
|                                                   | \<136714-Meshack Owino\>                                     |
|                                                   |                                                              |
|                                                   | \<135372-Allan Mwandawiro\>                                  |
|                                                   |                                                              |
|                                                   | \<121717-Celestine Nyaata\>                                  |
+---------------------------------------------------+--------------------------------------------------------------+
| **BBIT 4.2 Group**                                | \<group A-Wisdom\>                                           |
+---------------------------------------------------+--------------------------------------------------------------+
| **Course Code**                                   | BBT4206                                                      |
+---------------------------------------------------+--------------------------------------------------------------+
| **Course Name**                                   | Business Intelligence II                                     |
+---------------------------------------------------+--------------------------------------------------------------+
| **Program**                                       | Bachelor of Business Information Technology                  |
+---------------------------------------------------+--------------------------------------------------------------+
| **Semester Duration**                             | 21<sup>st</sup> August 2023 to 28<sup>th</sup> November 2023 |
+---------------------------------------------------+--------------------------------------------------------------+

# Setup Chunk {#setup-chunk}

**Note:** the following KnitR options have been set as the global defaults:\
`knitr::opts_chunk$set(echo = TRUE, warning = FALSE, eval = TRUE,                        collapse = FALSE, tidy = TRUE)`.

> output:
>
> github_document:\
> toc: yes\
> toc_depth: 4\
> fig_width: 6\
> fig_height: 4\
> df_print: default
>
> editor_options:\
> chunk_output_type: console

More KnitR options are documented here <https://bookdown.org/yihui/rmarkdown-cookbook/chunk-options.html> and here <https://yihui.org/knitr/options/>.

# \<Measuring The Kurtosis\> {#provide-an-appropriate-title-here}

Describe the code chunk here:

``` r
# Fill this with R related code that will be executed when the R markdown file
# is rendered using knitR
library(readr)
# Fill this with other R related code that will be executed when the R markdown
# file is rendered using knitR
library(readr)
# Knowing the data types will help you to identify the most appropriate
# visualization types and algorithms that can be applied.
sapply(student_performance_dataset,class)
# Dimensions refer to the number of observations (rows) and the number of
# attributes/variables/features (columns)
dim(student_performance_dataset)
```

Describe the next code chunk here:

``` r
# Fill this with other R related code that will be executed when the R markdown
# file is rendered using knitR
library(readr)
student_performance_dataset <-
  read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.CSV",
           col_types =
             cols(
               class_group = col_factor(levels = c("A", "B", "C")),
               gender = col_factor(levels = c("1", "0")),
               YOB = col_date(format = "%Y"),
               regret_choosing_bi = col_factor(levels = c("1", "0")),
               drop_bi_now = col_factor(levels = c("1", "0")),
               motivator = col_factor(levels = c("1", "0")),
               read_content_before_lecture =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               anticipate_test_questions =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               answer_rhetorical_questions =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               find_terms_I_do_not_know =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               copy_new_terms_in_reading_notebook =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               take_quizzes_and_use_results =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               reorganise_course_outline =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               write_down_important_points =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               space_out_revision =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               studying_in_study_group =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               schedule_appointments =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               goal_oriented = col_factor(levels = c("1", "0")),
               spaced_repetition =
                 col_factor(levels = c("1", "2", "3", "4")),
               testing_and_active_recall =
                 col_factor(levels = c("1", "2", "3", "4")),
               interleaving = col_factor(levels = c("1", "2", "3", "4")),
               categorizing = col_factor(levels = c("1", "2", "3", "4")),
               retrospective_timetable =
                 col_factor(levels = c("1", "2", "3", "4")),
               cornell_notes = col_factor(levels = c("1", "2", "3", "4")),
               sq3r = col_factor(levels = c("1", "2", "3", "4")),
               commute = col_factor(levels = c("1", "2", "3", "4")),
               study_time = col_factor(levels = c("1", "2", "3", "4")),
               repeats_since_Y1 = col_integer(),
               paid_tuition = col_factor(levels = c("0", "1")),
               free_tuition = col_factor(levels = c("0", "1")),
               extra_curricular = col_factor(levels = c("0", "1")),
               sports_extra_curricular = col_factor(levels = c("0", "1")),
               exercise_per_week = col_factor(levels = c("0", "1", "2", "3")),
               meditate = col_factor(levels = c("0", "1", "2", "3")),
               pray = col_factor(levels = c("0", "1", "2", "3")),
               internet = col_factor(levels = c("0", "1")),
               laptop = col_factor(levels = c("0", "1")),
               family_relationships =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               friendships = col_factor(levels = c("1", "2", "3", "4", "5")),
               romantic_relationships =
                 col_factor(levels = c("0", "1", "2", "3", "4")),
               spiritual_wellnes =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               financial_wellness =
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               health = col_factor(levels = c("1", "2", "3", "4", "5")),
               day_out = col_factor(levels = c("0", "1", "2", "3")),
               night_out = col_factor(levels = c("0", "1", "2", "3")),
               alcohol_or_narcotics =
                 col_factor(levels = c("0", "1", "2", "3")),
               mentor = col_factor(levels = c("0", "1")),
               mentor_meetings = col_factor(levels = c("0", "1", "2", "3")),
               `Attendance Waiver Granted: 1 = Yes, 0 = No` =
                 col_factor(levels = c("0", "1")),
               GRADE = col_factor(levels = c("A", "B", "C", "D", "E"))),
           locale = locale())

View(student_performance_dataset)
```

## \<You Can Have a Sub-Title Here\> {#you-can-have-a-sub-title-here}

``` r
# Fill this with other R related code that will be executed when the R markdown
# file is rendered using knitR
library(readr)
# Fill this with other R related code that will be executed when the R markdown
# file is rendered using knitR
library(readr)
if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")
sapply(student_performance_dataset[, 4],  kurtosis, type = 2)
```

**etc.** as per the lab submission requirements.
