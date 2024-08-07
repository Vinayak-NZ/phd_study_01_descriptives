## ---- case-data-flowchart

# case-A

profile_A <- boxGrob(glue("Co-creation profile", 
                        "Source = Template",
                        .sep = "\n"))

exp_A <- boxGrob(glue("Co-creation experience",
                        "Source = Interview",
                        "n = {pop}", 
                        pop = txtInt(5),
                        .sep = "\n"))

effectiveness_A <- boxGrob(glue("Effectiveness of co-creation approaches", 
                           "Source = Interview",
                           .sep = "\n"))

grid.newpage()

case_A_flow <- spreadVertical(profile_A = profile_A,
                           exp_A = exp_A,
                           effectiveness_A = effectiveness_A)

for (i in 1:(length(case_A_flow) - 1)) {
  connectGrob(case_A_flow[[i]], case_A_flow[[i + 1]], type = "vert") %>%
    print
}

png("output/flowchart_case_A.png", 
    width=500, 
    height = 500, 
    units = "px")

case_A_flow

dev.off()

# case-B

profile_B <- boxGrob(glue("Co-creation profile", 
                          "Source = Template",
                          .sep = "\n"))

exp_B_one <- boxGrob(glue("Co-creation experience",
                      "Source = Interview",
                      "n = {pop}", 
                      pop = txtInt(1),
                      .sep = "\n"))

exp_B_two <- boxGrob(glue("Co-creation experience",
                          "Source = Survey items",
                          "n = {pop}", 
                          pop = txtInt(5),
                          .sep = "\n"))

effectiveness_B <- boxGrob(glue("Effectiveness of co-creation approaches", 
                                "Source = Interview + Email",
                                .sep = "\n"))

grid.newpage()

case_B_flow <- spreadVertical(profile_B = profile_B,
                              exp_B_one = exp_B_one,
                              exp_B_two = exp_B_two, 
                              effectiveness_B = effectiveness_B)

for (i in 1:(length(case_B_flow) - 1)) {
  connectGrob(case_B_flow[[i]], case_B_flow[[i + 1]], type = "vert") %>%
    print
}

png("output/flowchart_case_B.png", 
    width=500, 
    height = 500, 
    units = "px")

case_B_flow

dev.off()

# case-C

profile_C <- boxGrob(glue("Co-creation profile", 
                          "Source = Template + Researcher guidance",
                          .sep = "\n"))

exp_C_one <- boxGrob(glue("Co-creation experience",
                          "Source = Interview",
                          "n = {pop}", 
                          pop = txtInt(1),
                          .sep = "\n"))

exp_C_two <- boxGrob(glue("Co-creation experience",
                          "Source = Survey items",
                          "n = {pop}", 
                          pop = txtInt(5),
                          .sep = "\n"))

effectiveness_C <- boxGrob(glue("Effectiveness of co-creation approaches", 
                                "Source = Interview + Email",
                                .sep = "\n"))

grid.newpage()

case_C_flow <- spreadVertical(profile_C = profile_C,
                              exp_C_one = exp_C_one,
                              exp_C_two = exp_C_two, 
                              effectiveness_C = effectiveness_C)

for (i in 1:(length(case_C_flow) - 1)) {
  connectGrob(case_C_flow[[i]], case_C_flow[[i + 1]], type = "vert") %>%
    print
}

png("output/flowchart_case_C.png", 
    width=500, 
    height = 500, 
    units = "px")

case_C_flow

dev.off()