# Here's an example of a conflict.
10
library(tidyverse)
library(NHANES)


# Looking at data ---------------------------------------------------------

glimpse(NHANES)

select(NHANES, Age, Weight, BMI)

select(NHANES, -HeadCirc)

select(NHANES, starts_with("BP"))
select(NHANES, ends_with("Day"))
select(NHANES, contains("Age"))

nhanes_small <- select(
  NHANES,
  Age,
  Gender,
  BMI,
  Diabetes,
  PhysActive,
  BPSysAve,
  BPDiaAve,
  Education
)
nhanes_small


# Fixing variable names ---------------------------------------------------

nhanes_small <- rename_with(
  nhanes_small,
  snakecase::to_snake_case
)
colnames(nhanes_small)
nhanes_small

nhanes_small <- rename(
  nhanes_small,
  sex = gender
)


# Piping ------------------------------------------------------------------

colnames(nhanes_small)

nhanes_small %>%
  colnames()
nhanes_small %>%
  select(phys_active) %>%
  rename(
    physically_active = phys_active
  )

# 1. Select specific columns
nhanes_small %>%
  select(
    bp_sys_ave,
    education
  )
# 2. Rename columns
nhanes_small %>%
  rename(
    bp_sys = bp_sys_ave,
    bp_dia = bp_dia_ave
  )
# 3. Re-write with pipe
nhanes_small %>%
  select(bmi, contains("age"))

# 4. Re-write with pipe
nhanes_small %>%
  select(starts_with("bp")) %>%
  rename(bp_systolic = bp_sys_ave)






# R basics ----------------------------------------------------------------

weight_kilos <- 100
weight_kilos <- 10

weight_kilos

colnames(airquality)

str(airquality)

summary(airquality)

2 + 2

2 + 2


# Packages ----------------------------------------------------------------

library(tidyverse)
