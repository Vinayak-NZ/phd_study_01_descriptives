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

