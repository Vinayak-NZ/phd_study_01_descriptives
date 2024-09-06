## ---- rankings-case-A

# challenges
challenges_dt_case_A <- 
  challenges_dt_case[challenges_dt_case$case == "A", ]

challenges_dt_case_A <- merge(challenges_dt_case_A, 
                            challenges_code_label_dt, by = "code")

challenges_dt_case_A <- 
  challenges_dt_case_A[order(-challenges_dt_case_A$percentage), ]

challenges_dt_case_A <- 
  challenges_dt_case_A[challenges_dt_case_A$percentage > 0 , ]

challenges_dt_case_A_quant <- 
  quantile(challenges_dt_case_A$percentage, 
           c(.33, .66))

challenges_dt_case_A_imp <- 
  challenges_dt_case_A[challenges_dt_case_A$percentage >= challenges_dt_case_A_quant[[2]], 
                       c("code", "label")]

challenges_dt_case_A_mod <- 
  challenges_dt_case_A[challenges_dt_case_A$percentage >= challenges_dt_case_A_quant[[1]] & 
                         challenges_dt_case_A$percentage < challenges_dt_case_A_quant[[2]], 
                       c("code", "label")]

challenges_dt_case_A_low <- 
  challenges_dt_case_A[challenges_dt_case_A$percentage < challenges_dt_case_A_quant[[1]], 
                       c("code", "label")]

challenges_dt_case_A_na_codes <- 
  as.vector(challenges_dt_case[challenges_dt_case$case == "A" & challenges_dt_case$percentage == 0, 
                       c("code")])

challenges_dt_case_A_na <- 
  challenges_code_label_dt[challenges_code_label_dt$code %in% challenges_dt_case_A_na_codes, ]

challenges_dt_case_A_imp$case <- "A"

challenges_dt_case_A_mod$case <- "A"

challenges_dt_case_A_low$case <- "A"

if(nrow(challenges_dt_case_A_na) > 0){
  
  challenges_dt_case_A_na$case <- "A"
  
}


# facilitators
facilitators_dt_case_A <- 
  facilitators_dt_case[facilitators_dt_case$case == "A", ]

facilitators_dt_case_A <- merge(facilitators_dt_case_A, 
                              facilitators_code_label_dt, by = "code")

facilitators_dt_case_A <- 
  facilitators_dt_case_A[order(-facilitators_dt_case_A$percentage), ]

facilitators_dt_case_A <- 
  facilitators_dt_case_A[facilitators_dt_case_A$percentage > 0 , ]

facilitators_dt_case_A_quant <- 
  quantile(facilitators_dt_case_A$percentage, 
           c(.33, .66))

facilitators_dt_case_A_imp <- 
  facilitators_dt_case_A[facilitators_dt_case_A$percentage > facilitators_dt_case_A_quant[[2]], 
                         c("code", "label")]

facilitators_dt_case_A_mod <- 
  facilitators_dt_case_A[facilitators_dt_case_A$percentage >= facilitators_dt_case_A_quant[[1]] & 
                           facilitators_dt_case_A$percentage < facilitators_dt_case_A_quant[[2]], 
                         c("code", "label")]

facilitators_dt_case_A_low <- 
  facilitators_dt_case_A[facilitators_dt_case_A$percentage < facilitators_dt_case_A_quant[[1]], 
                         c("code", "label")]


facilitators_dt_case_A_na_codes <- 
  as.vector(facilitators_dt_case[facilitators_dt_case$case == "A" & facilitators_dt_case$percentage == 0, 
                       c("code")])

facilitators_dt_case_A_na <- 
  facilitators_code_label_dt[facilitators_code_label_dt$code %in% facilitators_dt_case_A_na_codes, ]

facilitators_dt_case_A_imp$case <- "A"

facilitators_dt_case_A_mod$case <- "A"

facilitators_dt_case_A_low$case <- "A"

facilitators_dt_case_A_na$case <- "A"

## ---- rankings-case-B

# challenges
challenges_dt_case_B <- 
  challenges_dt_case[challenges_dt_case$case == "B", ]

challenges_dt_case_B <- merge(challenges_dt_case_B, 
                              challenges_code_label_dt, by = "code")

challenges_dt_case_B <- 
  challenges_dt_case_B[order(-challenges_dt_case_B$percentage), ]

challenges_dt_case_B <- 
  challenges_dt_case_B[challenges_dt_case_B$percentage > 0 , ]

challenges_dt_case_B_quant <- 
  quantile(challenges_dt_case_B$percentage, 
           c(.33, .66))

challenges_dt_case_B_imp <- 
  challenges_dt_case_B[challenges_dt_case_B$percentage > challenges_dt_case_B_quant[[2]], 
                       c("code", "label")]

challenges_dt_case_B_mod <- 
  challenges_dt_case_B[challenges_dt_case_B$percentage >= challenges_dt_case_B_quant[[1]] & 
                         challenges_dt_case_B$percentage < challenges_dt_case_B_quant[[2]], 
                       c("code", "label")]

challenges_dt_case_B_low <- 
  challenges_dt_case_B[challenges_dt_case_B$percentage < challenges_dt_case_B_quant[[1]], 
                       c("code", "label")]

challenges_dt_case_B_na_codes <- 
  as.vector(challenges_dt_case[challenges_dt_case$case == "B" & challenges_dt_case$percentage == 0, 
                       c("code")])

challenges_dt_case_B_na <- 
  challenges_code_label_dt[challenges_code_label_dt$code %in% challenges_dt_case_B_na_codes, ]

challenges_dt_case_B_imp$case <- "B"

challenges_dt_case_B_mod$case <- "B"

challenges_dt_case_B_low$case <- "B"

challenges_dt_case_B_na$case <- "B"

# facilitators
facilitators_dt_case_B <- 
  facilitators_dt_case[facilitators_dt_case$case == "B", ]

facilitators_dt_case_B <- merge(facilitators_dt_case_B, 
                                facilitators_code_label_dt, by = "code")

facilitators_dt_case_B <- 
  facilitators_dt_case_B[order(-facilitators_dt_case_B$percentage), ]

facilitators_dt_case_B <- 
  facilitators_dt_case_B[facilitators_dt_case_B$percentage > 0 , ]

facilitators_dt_case_B_quant <- 
  quantile(facilitators_dt_case_B$percentage, 
           c(.33, .66))

facilitators_dt_case_B_imp <- 
  facilitators_dt_case_B[facilitators_dt_case_B$percentage > facilitators_dt_case_B_quant[[2]], 
                         c("code", "label")]

facilitators_dt_case_B_mod <- 
  facilitators_dt_case_B[facilitators_dt_case_B$percentage >= facilitators_dt_case_B_quant[[1]] & 
                           facilitators_dt_case_B$percentage < facilitators_dt_case_B_quant[[2]], 
                         c("code", "label")]

facilitators_dt_case_B_low <- 
  facilitators_dt_case_B[facilitators_dt_case_B$percentage < facilitators_dt_case_B_quant[[1]], 
                         c("code", "label")]

facilitators_dt_case_B_na_codes <- 
  as.vector(facilitators_dt_case[facilitators_dt_case$case == "B" & facilitators_dt_case$percentage == 0, 
                       c("code")])

facilitators_dt_case_B_na <- 
  facilitators_code_label_dt[facilitators_code_label_dt$code %in% facilitators_dt_case_B_na_codes, ]

facilitators_dt_case_B_imp$case <- "B"

facilitators_dt_case_B_mod$case <- "B"

facilitators_dt_case_B_low$case <- "B"

facilitators_dt_case_B_na$case <- "B"


## ---- rankings-case-C

# challenges
challenges_dt_case_C <- 
  challenges_dt_case[challenges_dt_case$case == "C", ]

challenges_dt_case_C <- merge(challenges_dt_case_C, 
                              challenges_code_label_dt, by = "code")

challenges_dt_case_C <- 
  challenges_dt_case_C[order(-challenges_dt_case_C$percentage), ]

challenges_dt_case_C <- 
  challenges_dt_case_C[challenges_dt_case_C$percentage > 0 , ]

challenges_dt_case_C_quant <- 
  quantile(challenges_dt_case_C$percentage, 
           c(.33, .66))

challenges_dt_case_C_imp <- 
  challenges_dt_case_C[challenges_dt_case_C$percentage >= challenges_dt_case_C_quant[[2]], 
                       c("code", "label")]

challenges_dt_case_C_mod <- 
  challenges_dt_case_C[challenges_dt_case_C$percentage >= challenges_dt_case_C_quant[[1]] & 
                         challenges_dt_case_C$percentage < challenges_dt_case_C_quant[[2]], 
                       c("code", "label")]

challenges_dt_case_C_low <- 
  challenges_dt_case_C[challenges_dt_case_C$percentage < challenges_dt_case_C_quant[[1]], 
                       c("code", "label")]

challenges_dt_case_C_na_codes <- 
  as.vector(challenges_dt_case[challenges_dt_case$case == "C" & challenges_dt_case$percentage == 0, 
                       c("code")])

challenges_dt_case_C_na <- 
  challenges_code_label_dt[challenges_code_label_dt$code %in% challenges_dt_case_C_na_codes, ]

challenges_dt_case_C_imp$case <- "C"

challenges_dt_case_C_mod$case <- "C"

challenges_dt_case_C_low$case <- "C"

challenges_dt_case_C_na$case <- "C"

# facilitators
facilitators_dt_case_C <- 
  facilitators_dt_case[facilitators_dt_case$case == "C", ]

facilitators_dt_case_C <- merge(facilitators_dt_case_C, 
                                facilitators_code_label_dt, by = "code")

facilitators_dt_case_C <- 
  facilitators_dt_case_C[order(-facilitators_dt_case_C$percentage), ]

facilitators_dt_case_C <- 
  facilitators_dt_case_C[facilitators_dt_case_C$percentage > 0 , ]

facilitators_dt_case_C_quant <- 
  quantile(facilitators_dt_case_C$percentage, 
           c(.33, .66))

facilitators_dt_case_C_imp <- 
  facilitators_dt_case_C[facilitators_dt_case_C$percentage >= facilitators_dt_case_C_quant[[2]], 
                         c("code", "label")]

facilitators_dt_case_C_mod <- 
  facilitators_dt_case_C[facilitators_dt_case_C$percentage >= facilitators_dt_case_C_quant[[1]] & 
                           facilitators_dt_case_C$percentage < facilitators_dt_case_C_quant[[2]], 
                         c("code", "label")]

facilitators_dt_case_C_low <- 
  facilitators_dt_case_C[facilitators_dt_case_C$percentage < facilitators_dt_case_C_quant[[1]], 
                         c("code", "label")]

facilitators_dt_case_C_na_codes <- 
  as.vector(facilitators_dt_case[facilitators_dt_case$case == "C" & facilitators_dt_case$percentage == 0, 
                       c("code")])

facilitators_dt_case_C_na <- 
  facilitators_code_label_dt[facilitators_code_label_dt$code %in% facilitators_dt_case_C_na_codes, ]

facilitators_dt_case_C_imp$case <- "C"

facilitators_dt_case_C_mod$case <- "C"

facilitators_dt_case_C_low$case <- "C"

facilitators_dt_case_C_na$case <- "C"

## ---- rankings-case-all

# challenges
challenges_all_imp <- rbind(challenges_dt_case_A_imp, 
                            challenges_dt_case_B_imp, 
                            challenges_dt_case_C_imp)

challenges_all_mod <- rbind(challenges_dt_case_A_mod, 
                            challenges_dt_case_B_mod, 
                            challenges_dt_case_C_mod)

challenges_all_low <- rbind(challenges_dt_case_A_low, 
                            challenges_dt_case_B_low, 
                            challenges_dt_case_C_low)

challenges_all_na <- rbind(challenges_dt_case_A_na, 
                           challenges_dt_case_B_na, 
                           challenges_dt_case_C_na)

# facilitators
facilitators_all_imp <- rbind(facilitators_dt_case_A_imp, 
                              facilitators_dt_case_B_imp, 
                              facilitators_dt_case_C_imp)

facilitators_all_mod <- rbind(facilitators_dt_case_A_mod, 
                              facilitators_dt_case_B_mod, 
                              facilitators_dt_case_C_mod)

facilitators_all_low <- rbind(facilitators_dt_case_A_low, 
                              facilitators_dt_case_B_low, 
                              facilitators_dt_case_C_low)

facilitators_all_na <- rbind(facilitators_dt_case_A_na, 
                             facilitators_dt_case_B_na, 
                             facilitators_dt_case_C_na)

