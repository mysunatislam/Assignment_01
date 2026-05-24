install.packages("usethis")
install.packages("gitcreds")

usethis::use_git_config(
  user.name = "mysunatislam",
  user.email = "mysunatislam@gmail.com"
)
usethis::git_sitrep()
gitcreds::gitcreds_set()

library(tidyverse)

expr_tbl <- read_csv("raw_expression_matrix.csv")
clinic_tbl <- read_csv("raw_clinical_metadata.csv")


expr_tbl <- expr_tbl %>%
  rename(ID = Sample_Ref) %>%
  mutate(
    ID = str_replace_all(ID, "_", "-")
  )


clinic_tbl <- clinic_tbl %>%
  mutate(
    Age = recode(
      Age,
      "fifty-two" = "52",
      "sixty-seven" = "67"
    ),
    
    Age = as.numeric(Age)
  )


clinic_tbl <- clinic_tbl %>%
  filter(
    Condition != "",
    !is.na(Condition)
  )


