## ---- data-load

challenges <- read.csv("input/challenges.csv", sep = "\t")
facilitators <- read.csv("input/facilitators.csv", sep = "\t")
case_attributes <- read.csv("input/case_attributes.csv", sep = ",")

cross_case_challenges <- read.csv("input/cross_case_challenges_imp.csv", sep = ",")
cross_case_facilitators <- read.csv("input/cross_case_facilitators_imp.csv", sep = ",")
