## ---- subset-data

challenges_subset <- challenges[
  challenges$owner.2 == "Vinayak", 
  c("caseid", 
    "ctid", 
    "seltext", 
    "name",
    "owner.2")]

facilitators_subset <- facilitators[
  facilitators$owner.2 == "Vinayak", 
  c("caseid", 
    "ctid", 
    "seltext", 
    "name",
    "owner.2")]

case_attributes_subset <- case_attributes[
  , 
  c("Id", 
    "dt_case", 
    "Name", 
    "role", 
    "affiliation", 
    "expertise", 
    "involvement")
]

## ---- create-code-numbers
challenges_subset$code_number <- 
  paste0("C", 
         substr(challenges_subset$name, 1, 2))

facilitators_subset$code_number <- 
  paste0("F", 
         substr(facilitators_subset$name, 1, 2))

## ---- remove-code-numbers
challenges_subset$name <- 
  gsub("^.{0,3}", "", challenges_subset$name)

facilitators_subset$name <- 
  gsub("^.{0,3}", "", facilitators_subset$name)

## ---- rename-variables
colnames(challenges_subset)[colnames(challenges_subset) == 'name'] <- 
  'code'

colnames(challenges_subset)[colnames(challenges_subset) == 'owner.2'] <- 
  'owner'

colnames(facilitators_subset)[colnames(facilitators_subset) == 'name'] <- 
  'code'

colnames(facilitators_subset)[colnames(facilitators_subset) == 'owner.2'] <- 
  'owner'

colnames(case_attributes_subset)[colnames(case_attributes_subset) == 'Id'] <- 
  'caseid'

colnames(case_attributes_subset)[colnames(case_attributes_subset) == 'Name'] <- 
  'name'

## ---- merge-data

challenges_final <- merge(challenges_subset, 
                          case_attributes_subset, 
                          by = "caseid")

facilitators_final <- merge(facilitators_subset, 
                            case_attributes_subset, 
                            by = "caseid")

## ---- create-vars

challenges_final$academic <- ifelse(
  challenges_final$affiliation == "University", 
  1, 0)

facilitators_final$academic <- ifelse(
  facilitators_final$affiliation == "University", 
  1, 0)

## ---- create-code-name-table

challenges_code_label_dt <- unique(challenges_final[, c("code", "code_number")])

facilitators_code_label_dt <- unique(facilitators_final[, c("code", "code_number")])

colnames(challenges_code_label_dt)[colnames(challenges_code_label_dt) == 'code'] <- 
  'label'

colnames(challenges_code_label_dt)[colnames(challenges_code_label_dt) == 'code_number'] <- 
  'code'

colnames(facilitators_code_label_dt)[colnames(facilitators_code_label_dt) == 'code'] <- 
  'label'

colnames(facilitators_code_label_dt)[colnames(facilitators_code_label_dt) == 'code_number'] <- 
  'code'


## ---- edit-cross-case-challenges

cross_case_challenges$case <- 
  factor(cross_case_challenges$case, 
         levels = c("A", 
                    "B", 
                    "C"))

cross_case_challenges$challenge_imp_label <- 
  factor(cross_case_challenges$challenge_imp_label, 
         levels = c("Unclear expectations", 
                    "Competing needs", 
                    "Language or custom differences", 
                    "Difficult co-creator relationships",
                    "Poor planning of collaboration",
                    "Limited exchange",
                    "Resource constraints",
                    "Difficulties recruiting co-creators",
                    "Failure to acknowledge",
                    "Skills or knowledge gap", 
                    "Difficulties distributing workload", 
                    "Other"))


cross_case_challenges <- 
  cross_case_challenges[cross_case_challenges$count > 0, ]

## ---- edit-cross-case-facilitators

cross_case_facilitators$case <- 
  factor(cross_case_facilitators$case, 
         levels = c("A", 
                    "B", 
                    "C"))

cross_case_facilitators$facilitators_imp_label <- 
  factor(cross_case_facilitators$facilitators_imp_label, 
         levels = c("Co-creator exchanges", 
                    "Leverage strengths", 
                    "Apadative process", 
                    "Transparent communication",
                    "Needs analysis",
                    "Targeted recruitment",
                    "Facilitation strategies",
                    "Feasible design",
                    "Trust and dependability",
                    "Prototype or demo", 
                    "Top-down management"))


cross_case_facilitators <- 
  cross_case_facilitators[cross_case_facilitators$count > 0, ]
