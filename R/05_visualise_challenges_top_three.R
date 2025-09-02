## ---- visualise-challenges-top-three

# tidy-data

challenges_dt_case_A_order <- 
  challenges_dt_case_A[order(challenges_dt_case_A$percentage, decreasing = TRUE), ]

challenges_dt_case_A_order <- challenges_dt_case_A_order[1:3,]

challenges_dt_case_B_order <- 
  challenges_dt_case_B[order(challenges_dt_case_B$percentage, decreasing = TRUE), ]

challenges_dt_case_B_order <- challenges_dt_case_B_order[1:3,]

challenges_dt_case_C_order <- 
  challenges_dt_case_C[order(challenges_dt_case_C$percentage, decreasing = TRUE), ]

challenges_dt_case_C_order <- challenges_dt_case_C_order[1:3,]

challenges_top_three <- rbind(challenges_dt_case_A_order, 
                              challenges_dt_case_B_order, 
                              challenges_dt_case_C_order)

challenges_top_three$case <- ifelse(challenges_top_three$case == "A", "Case A", 
                                    ifelse(challenges_top_three$case == "B", "Case B", "Case C"))

# plot-data

plot_challenges_top_three <- 
  ggplot(challenges_top_three, aes(x = case, y = percentage, fill = code)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.8), width = 0.7) +
  theme_minimal() +
  scale_fill_viridis_d(option = "D", labels = labels.challenges) + 
  ylim(0, 30) +
  labs(title = paste0("Key Challenges per Case"), 
       subtitle = "Bar chart of top three challenges by case",
       fill = "Challenges") +
  xlab("Cases") + 
  ylab("Percentage (within each case)") + 
  theme(
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank(),
    panel.background = element_blank(), 
    axis.line = element_line(colour = "black"),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 14),
    legend.text = element_text(size = 14),
    legend.title = element_text(size = 14),
    plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
    plot.subtitle = element_text(color = "#454543"),
    plot.caption = element_text(color = "#454543", face = "italic")
  )


plot_challenges_top_three

ggsave(filename = "figure_02.jpeg", 
  path = "output", 
  device='tiff', 
  dpi=300)
