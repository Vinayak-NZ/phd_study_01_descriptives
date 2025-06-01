## ---- visualise-challenges

# challenges-case
challenges_dt_case_A <- challenges_dt_case[challenges_dt_case$case == "A", ]

challenges_dt_case_B <- challenges_dt_case[challenges_dt_case$case == "B", ]

challenges_dt_case_C <- challenges_dt_case[challenges_dt_case$case == "C", ]

plot_challenges_A <- 
  ggplot(challenges_dt_case_A, 
         aes(reorder(code, 
                     -percentage), 
             y = percentage, 
             fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case A",
       caption = "Data source: Case study", 
       fill = "Challenges") +
  xlab("Challenges") + 
  ylab("Percentage") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic"), 
        legend.key = element_rect(color = NA), 
        legend.key.width = unit(0, "pt"),
        legend.spacing.x = unit(0, "pt")) 

ggsave("output/plot_challenges_A.png", 
       plot = plot_challenges_A, 
       width = 500, 
       heigh = 500, 
       unit = "mm", 
       dpi = 300)

plot_challenges_B <- 
  ggplot(challenges_dt_case_B, 
         aes(reorder(code, 
                     -percentage), 
             y = percentage, 
             fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case B",
       caption = "Data source: Case study", 
       fill = "Challenges") +
  xlab("Challenges") + 
  ylab("Percentage") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic"), 
        legend.key = element_rect(color = NA), 
        legend.key.width = unit(0, "pt"),
        legend.spacing.x = unit(0, "pt")) 

ggsave("output/plot_challenges_B.png", 
       plot = plot_challenges_B)

plot_challenges_C <- 
  ggplot(challenges_dt_case_C, 
         aes(reorder(code, 
                     -percentage), 
             y = percentage, 
             fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case C",
       caption = "Data source: Case study", 
       fill = "Challenges") +
  xlab("Challenges") + 
  ylab("Percentage") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic"), 
        legend.key = element_rect(color = NA), 
        legend.key.width = unit(0, "pt"),
        legend.spacing.x = unit(0, "pt")) 

ggsave("output/plot_challenges_C.png", 
       plot = plot_challenges_C)