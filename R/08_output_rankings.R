## ---- create-ranking-tables

# challenges-important
c_imp_max <- max(nrow(challenges_dt_case_A_imp), 
                 nrow(challenges_dt_case_B_imp), 
                 nrow(challenges_dt_case_C_imp))

c_imp_list <- list(challenges_dt_case_A_imp, 
                   challenges_dt_case_B_imp, 
                   challenges_dt_case_C_imp)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(c_imp_list)){
  
  c_imp_list[[i]] <- c_imp_list[[i]][, c("code", "label")]
  
  colnames(c_imp_list[[i]])[colnames(c_imp_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(c_imp_list[[i]])[colnames(c_imp_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(c_imp_list[[i]]) < c_imp_max){
    
    c_imp_list[[i]][nrow(c_imp_list[[i]]) + abs(c_imp_max - nrow(c_imp_list[[i]])), ] <- NA
    
  }
  
}

challenges_imp <- cbind(c_imp_list[[1]], 
                        c_imp_list[[2]], 
                        c_imp_list[[3]])

# challenges-moderate
c_mod_max <- max(nrow(challenges_dt_case_A_mod), 
                 nrow(challenges_dt_case_B_mod), 
                 nrow(challenges_dt_case_C_mod))

c_mod_list <- list(challenges_dt_case_A_mod, 
                   challenges_dt_case_B_mod, 
                   challenges_dt_case_C_mod)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(c_mod_list)){
  
  c_mod_list[[i]] <- c_mod_list[[i]][, c("code", "label")]
  
  colnames(c_mod_list[[i]])[colnames(c_mod_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(c_mod_list[[i]])[colnames(c_mod_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(c_mod_list[[i]]) < c_mod_max){
    
    c_mod_list[[i]][nrow(c_mod_list[[i]]) + abs(c_mod_max - nrow(c_mod_list[[i]])), ] <- NA
    
  }
  
}

challenges_mod <- cbind(c_mod_list[[1]], 
                        c_mod_list[[2]], 
                        c_mod_list[[3]])

# challenges-low
c_low_max <- max(nrow(challenges_dt_case_A_low), 
                 nrow(challenges_dt_case_B_low), 
                 nrow(challenges_dt_case_C_low))

c_low_list <- list(challenges_dt_case_A_low, 
                   challenges_dt_case_B_low, 
                   challenges_dt_case_C_low)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(c_low_list)){
  
  c_low_list[[i]] <- c_low_list[[i]][, c("code", "label")]
  
  colnames(c_low_list[[i]])[colnames(c_low_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(c_low_list[[i]])[colnames(c_low_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(c_low_list[[i]]) < c_low_max){
    
    c_low_list[[i]][nrow(c_low_list[[i]]) + abs(c_low_max - nrow(c_low_list[[i]])), ] <- NA
    
  }
  
}

challenges_low <- cbind(c_low_list[[1]], 
                        c_low_list[[2]], 
                        c_low_list[[3]])

# challenges-na
c_na_max <- max(nrow(challenges_dt_case_A_na), 
                nrow(challenges_dt_case_B_na), 
                nrow(challenges_dt_case_C_na))

c_na_list <- list(challenges_dt_case_A_na, 
                  challenges_dt_case_B_na, 
                  challenges_dt_case_C_na)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(c_na_list)){
  
  c_na_list[[i]] <- c_na_list[[i]][, c("code", "label")]
  
  colnames(c_na_list[[i]])[colnames(c_na_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(c_na_list[[i]])[colnames(c_na_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(c_na_list[[i]]) < c_na_max){
    
    c_na_list[[i]][nrow(c_na_list[[i]]) + abs(c_na_max - nrow(c_na_list[[i]])), ] <- NA
    
  }
  
}

challenges_na <- cbind(c_na_list[[1]], 
                       c_na_list[[2]], 
                       c_na_list[[3]])

# facilitators-important
f_imp_max <- max(nrow(facilitators_dt_case_A_imp), 
                 nrow(facilitators_dt_case_B_imp), 
                 nrow(facilitators_dt_case_C_imp))

f_imp_list <- list(facilitators_dt_case_A_imp, 
                   facilitators_dt_case_B_imp, 
                   facilitators_dt_case_C_imp)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(f_imp_list)){
  
  f_imp_list[[i]] <- f_imp_list[[i]][, c("code", "label")]
  
  colnames(f_imp_list[[i]])[colnames(f_imp_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(f_imp_list[[i]])[colnames(f_imp_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(f_imp_list[[i]]) < f_imp_max){
    
    f_imp_list[[i]][nrow(f_imp_list[[i]]) + abs(f_imp_max - nrow(f_imp_list[[i]])), ] <- NA
    
  }
  
}

facilitators_imp <- cbind(f_imp_list[[1]], 
                          f_imp_list[[2]], 
                          f_imp_list[[3]])

# facilitators-moderate
f_mod_max <- max(nrow(facilitators_dt_case_A_mod), 
                 nrow(facilitators_dt_case_B_mod), 
                 nrow(facilitators_dt_case_C_mod))

f_mod_list <- list(facilitators_dt_case_A_mod, 
                   facilitators_dt_case_B_mod, 
                   facilitators_dt_case_C_mod)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(f_mod_list)){
  
  f_mod_list[[i]] <- f_mod_list[[i]][, c("code", "label")]
  
  colnames(f_mod_list[[i]])[colnames(f_mod_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(f_mod_list[[i]])[colnames(f_mod_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(f_mod_list[[i]]) < f_mod_max){
    
    f_mod_list[[i]][nrow(f_mod_list[[i]]) + abs(f_mod_max - nrow(f_mod_list[[i]])), ] <- NA
    
  }
  
}

facilitators_mod <- cbind(f_mod_list[[1]], 
                          f_mod_list[[2]], 
                          f_mod_list[[3]])

# facilitators-low
f_low_max <- max(nrow(facilitators_dt_case_A_low), 
                 nrow(facilitators_dt_case_B_low), 
                 nrow(facilitators_dt_case_C_low))

f_low_list <- list(facilitators_dt_case_A_low, 
                   facilitators_dt_case_B_low, 
                   facilitators_dt_case_C_low)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(f_low_list)){
  
  f_low_list[[i]] <- f_low_list[[i]][, c("code", "label")]
  
  colnames(f_low_list[[i]])[colnames(f_low_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(f_low_list[[i]])[colnames(f_low_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(f_low_list[[i]]) < f_low_max){
    
    f_low_list[[i]][nrow(f_low_list[[i]]) + abs(f_low_max - nrow(f_low_list[[i]])), ] <- NA
    
  }
  
}

facilitators_low <- cbind(f_low_list[[1]], 
                          f_low_list[[2]], 
                          f_low_list[[3]])


# facilitators-na
f_na_max <- max(nrow(facilitators_dt_case_A_na), 
                nrow(facilitators_dt_case_B_na), 
                nrow(facilitators_dt_case_C_na))

f_na_list <- list(facilitators_dt_case_A_na, 
                  facilitators_dt_case_B_na, 
                  facilitators_dt_case_C_na)

code_rep <- c("code_A", "code_B", "code_C")

label_rep <- c("label_A", "label_B", "label_C")

for(i in 1:length(f_na_list)){
  
  f_na_list[[i]] <- f_na_list[[i]][, c("code", "label")]
  
  colnames(f_na_list[[i]])[colnames(f_na_list[[i]]) == 'code'] <- code_rep[i]
  
  colnames(f_na_list[[i]])[colnames(f_na_list[[i]]) == 'label'] <- label_rep[i]
  
  if(nrow(f_na_list[[i]]) < f_na_max){
    
    f_na_list[[i]][nrow(f_na_list[[i]]) + abs(f_na_max - nrow(f_na_list[[i]])), ] <- NA
    
  }
  
}

facilitators_na <- cbind(f_na_list[[1]], 
                         f_na_list[[2]], 
                         f_na_list[[3]])

## ---- save-ranking-tables

write.csv(challenges_imp, "output/challenges_imp.csv")
write.csv(challenges_mod, "output/challenges_mod.csv")
write.csv(challenges_low, "output/challenges_low.csv")
write.csv(challenges_na, "output/challenges_na.csv")

write.csv(facilitators_imp, "output/facilitators_imp.csv")
write.csv(facilitators_mod, "output/facilitators_mod.csv")
write.csv(facilitators_low, "output/facilitators_low.csv")
write.csv(challenges_na, "output/challenges_na.csv")
