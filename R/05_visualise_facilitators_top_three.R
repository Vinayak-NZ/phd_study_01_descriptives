## ---- visualise-facilitators-top-three

# tidy-data

facilitators_dt_case_A_order <- 
  facilitators_dt_case_A[order(facilitators_dt_case_A$percentage, decreasing = TRUE), ]

facilitators_dt_case_A_order <- facilitators_dt_case_A_order[1:3,]

facilitators_dt_case_B_order <- 
  facilitators_dt_case_B[order(facilitators_dt_case_B$percentage, decreasing = TRUE), ]

facilitators_dt_case_B_order <- facilitators_dt_case_B_order[1:3,]

facilitators_dt_case_C_order <- 
  facilitators_dt_case_C[order(facilitators_dt_case_C$percentage, decreasing = TRUE), ]

facilitators_dt_case_C_order <- facilitators_dt_case_C_order[1:3,]

facilitators_top_three <- rbind(facilitators_dt_case_A_order, 
                              facilitators_dt_case_B_order, 
                              facilitators_dt_case_C_order)

facilitators_top_three$case <- ifelse(facilitators_top_three$case == "A", "Case A", 
                                    ifelse(facilitators_top_three$case == "B", "Case B", "Case C"))

# plot-data

plot_facilitators_top_three <- 
ggplot(facilitators_top_three, aes(x = case, y = percentage, fill = code)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.8), width = 0.7) +
  theme_minimal() +
  scale_fill_brewer(palette = "Dark2", 
                    labels = labels.facilitators) + 
  ylim(0, 30) +
  labs(title = paste0("Key Facilitators per case"), 
       subtitle = "Bar chart of top three facilitators by case",
       caption = "Figure 1. Bar chart of top three facilitators and corresponding rates of being coded for within each case", 
       fill = "Facilitators") +
  xlab("Case") + 
  ylab("Percentage (within each case)") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic")) 

plot_facilitators_top_three

ggsave(filename = "figure_01.jpeg", 
       path = "output", 
       device='tiff', 
       dpi=300)
