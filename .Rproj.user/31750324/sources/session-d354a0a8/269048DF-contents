## ---- challenges-dt-case-table

dt_case_challenges_count <- 
  table(challenges_final$dt_case)

challenges_dt_case <- 
  as.data.frame(
    table(challenges_final$dt_case, 
      challenges_final$code_number))

colnames(challenges_dt_case)[colnames(challenges_dt_case) == 'Var1'] <- 
  'case'

colnames(challenges_dt_case)[colnames(challenges_dt_case) == 'Var2'] <- 
  'code'

colnames(challenges_dt_case)[colnames(challenges_dt_case) == 'Freq'] <- 
  'count'

challenges_dt_case$case_total <- ifelse(
  challenges_dt_case$case == "A", 
  dt_case_challenges_count[1], 
  ifelse(challenges_dt_case$case == "B", 
         dt_case_challenges_count[2], 
         dt_case_challenges_count[3])
)

challenges_dt_case$percentage <- 
  (challenges_dt_case$count/challenges_dt_case$case_total)*100

## ---- challenges-academic-dt-case-table

challenges_A <- challenges_final[challenges_final$dt_case == "A", ]

challenges_B <- challenges_final[challenges_final$dt_case == "B", ]

challenges_C <- challenges_final[challenges_final$dt_case == "C", ]

ac_challenges_count_A <- 
  table(challenges_A$academic)

ac_challenges_count_B <- 
  table(challenges_B$academic)

ac_challenges_count_C <- 
  table(challenges_C$academic)

challenges_A_ac_table <- 
  as.data.frame(
    table(challenges_A$academic, 
          challenges_A$code_number))

challenges_B_ac_table <- 
  as.data.frame(
    table(challenges_B$academic, 
          challenges_B$code_number))

challenges_C_ac_table <- 
  as.data.frame(
    table(challenges_C$academic, 
          challenges_C$code_number))

challenges_A_ac_table$case <- "A"

challenges_B_ac_table$case <- "B" 

challenges_C_ac_table$case <- "C"

colnames(challenges_A_ac_table)[colnames(challenges_A_ac_table) == 'Var1'] <- 
  'academic'

colnames(challenges_A_ac_table)[colnames(challenges_A_ac_table) == 'Var2'] <- 
  'code'

colnames(challenges_A_ac_table)[colnames(challenges_A_ac_table) == 'Freq'] <- 
  'count'

colnames(challenges_B_ac_table)[colnames(challenges_B_ac_table) == 'Var1'] <- 
  'academic'

colnames(challenges_B_ac_table)[colnames(challenges_B_ac_table) == 'Var2'] <- 
  'code'

colnames(challenges_B_ac_table)[colnames(challenges_B_ac_table) == 'Freq'] <- 
  'count'

colnames(challenges_C_ac_table)[colnames(challenges_C_ac_table) == 'Var1'] <- 
  'academic'

colnames(challenges_C_ac_table)[colnames(challenges_C_ac_table) == 'Var2'] <- 
  'code'

colnames(challenges_C_ac_table)[colnames(challenges_C_ac_table) == 'Freq'] <- 
  'count'

challenges_A_ac_table$case_total <- ifelse(
  challenges_A_ac_table$academic == 0, 
  ac_challenges_count_A[1], 
  ac_challenges_count_A[2])

challenges_B_ac_table$case_total <- ifelse(
  challenges_B_ac_table$academic == 0, 
  ac_challenges_count_B[1], 
  ac_challenges_count_B[2])

challenges_C_ac_table$case_total <- ifelse(
  challenges_C_ac_table$academic == 0, 
  ac_challenges_count_C[1], 
  ac_challenges_count_C[2])

challenges_ac_table <- rbind(challenges_A_ac_table, 
                             challenges_B_ac_table, 
                             challenges_C_ac_table)

challenges_ac_table <- challenges_ac_table[ , c("case", 
                                                "academic", 
                                                "code", 
                                                "count", 
                                                "case_total")]

challenges_ac_table$percentage <- 
  (challenges_ac_table$count/challenges_ac_table$case_total)*100

## ---- facilitators-dt-case-table

dt_case_facilitators_count <- 
  table(facilitators_final$dt_case)

facilitators_dt_case <- 
  as.data.frame(
    table(facilitators_final$dt_case, 
          facilitators_final$code_number))

colnames(facilitators_dt_case)[colnames(facilitators_dt_case) == 'Var1'] <- 
  'case'

colnames(facilitators_dt_case)[colnames(facilitators_dt_case) == 'Var2'] <- 
  'code'

colnames(facilitators_dt_case)[colnames(facilitators_dt_case) == 'Freq'] <- 
  'count'

facilitators_dt_case$case_total <- ifelse(
  facilitators_dt_case$case == "A", 
  dt_case_facilitators_count[1], 
  ifelse(facilitators_dt_case$case == "B", 
         dt_case_facilitators_count[2], 
         dt_case_facilitators_count[3])
)

facilitators_dt_case$percentage <- 
  (facilitators_dt_case$count/facilitators_dt_case$case_total)*100

## ---- facilitators-academic-dt-case-table

facilitators_A <- facilitators_final[facilitators_final$dt_case == "A", ]

facilitators_B <- facilitators_final[facilitators_final$dt_case == "B", ]

facilitators_C <- facilitators_final[facilitators_final$dt_case == "C", ]

ac_facilitators_count_A <- 
  table(facilitators_A$academic)

ac_facilitators_count_B <- 
  table(facilitators_B$academic)

ac_facilitators_count_C <- 
  table(facilitators_C$academic)

facilitators_A_ac_table <- 
  as.data.frame(
    table(facilitators_A$academic, 
          facilitators_A$code_number))

facilitators_B_ac_table <- 
  as.data.frame(
    table(facilitators_B$academic, 
          facilitators_B$code_number))

facilitators_C_ac_table <- 
  as.data.frame(
    table(facilitators_C$academic, 
          facilitators_C$code_number))

facilitators_A_ac_table$case <- "A"

facilitators_B_ac_table$case <- "B" 

facilitators_C_ac_table$case <- "C"

colnames(facilitators_A_ac_table)[colnames(facilitators_A_ac_table) == 'Var1'] <- 
  'academic'

colnames(facilitators_A_ac_table)[colnames(facilitators_A_ac_table) == 'Var2'] <- 
  'code'

colnames(facilitators_A_ac_table)[colnames(facilitators_A_ac_table) == 'Freq'] <- 
  'count'

colnames(facilitators_B_ac_table)[colnames(facilitators_B_ac_table) == 'Var1'] <- 
  'academic'

colnames(facilitators_B_ac_table)[colnames(facilitators_B_ac_table) == 'Var2'] <- 
  'code'

colnames(facilitators_B_ac_table)[colnames(facilitators_B_ac_table) == 'Freq'] <- 
  'count'

colnames(facilitators_C_ac_table)[colnames(facilitators_C_ac_table) == 'Var1'] <- 
  'academic'

colnames(facilitators_C_ac_table)[colnames(facilitators_C_ac_table) == 'Var2'] <- 
  'code'

colnames(facilitators_C_ac_table)[colnames(facilitators_C_ac_table) == 'Freq'] <- 
  'count'

facilitators_A_ac_table$case_total <- ifelse(
  facilitators_A_ac_table$academic == 0, 
  ac_facilitators_count_A[1], 
  ac_facilitators_count_A[2])

facilitators_B_ac_table$case_total <- ifelse(
  facilitators_B_ac_table$academic == 0, 
  ac_facilitators_count_B[1], 
  ac_facilitators_count_B[2])

facilitators_C_ac_table$case_total <- ifelse(
  facilitators_C_ac_table$academic == 0, 
  ac_facilitators_count_C[1], 
  ac_facilitators_count_C[2])

facilitators_ac_table <- rbind(facilitators_A_ac_table, 
                               facilitators_B_ac_table, 
                               facilitators_C_ac_table)

facilitators_ac_table <- facilitators_ac_table[ , c("case", 
                                                    "academic", 
                                                    "code", 
                                                    "count", 
                                                    "case_total")]

facilitators_ac_table$percentage <- 
  (facilitators_ac_table$count/facilitators_ac_table$case_total)*100
