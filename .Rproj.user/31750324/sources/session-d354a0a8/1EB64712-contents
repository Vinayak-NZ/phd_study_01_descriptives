## ---- visualise-facilitators

# facilitators-case
facilitators_dt_case_A <- facilitators_dt_case[facilitators_dt_case$case == "A", ]

facilitators_dt_case_B <- facilitators_dt_case[facilitators_dt_case$case == "B", ]

facilitators_dt_case_C <- facilitators_dt_case[facilitators_dt_case$case == "C", ]

plot_facilitators_A <- 
  ggplot(facilitators_dt_case_A, 
         aes(reorder(code, 
                     -percentage), 
             y = percentage, 
             fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.facilitators)), 
                    labels = labels.facilitators) +
  ylim(0, 30) +
  labs(title = paste0("Facilitators of co-creating digital health interventions"), 
       subtitle = "Bar chart of facilitators for case A",
       caption = "Data source: Case study", 
       fill = "Facilitators") +
  xlab("Facilitators") + 
  ylab("Percentage") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic"), 
        legend.key = element_rect(color = NA), 
        legend.key.width = unit(0, "pt"),
        legend.spacing.x = unit(0, "pt")) 

ggsave("output/plot_facilitators_A.png", 
       plot = plot_facilitators_A)

plot_facilitators_B <- 
  ggplot(facilitators_dt_case_B, 
         aes(reorder(code, 
                     -percentage), 
             y = percentage, 
             fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.facilitators)), 
                    labels = labels.facilitators) +
  ylim(0, 30) +
  labs(title = paste0("Facilitators of co-creating digital health interventions"), 
       subtitle = "Bar chart of facilitators for case B",
       caption = "Data source: Case study", 
       fill = "Facilitators") +
  xlab("Facilitators") + 
  ylab("Percentage") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic"), 
        legend.key = element_rect(color = NA), 
        legend.key.width = unit(0, "pt"),
        legend.spacing.x = unit(0, "pt")) 

ggsave("output/plot_facilitators_B.png", 
       plot = plot_facilitators_B)

plot_facilitators_C <- 
  ggplot(facilitators_dt_case_C, 
         aes(reorder(code, 
                     -percentage), 
             y = percentage, 
             fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.facilitators)), 
                    labels = labels.facilitators) +
  ylim(0, 30) +
  labs(title = paste0("Facilitators of co-creating digital health interventions"), 
       subtitle = "Bar chart of facilitators for case C",
       caption = "Data source: Case study", 
       fill = "Facilitators") +
  xlab("Facilitators") + 
  ylab("Percentage") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic"), 
        legend.key = element_rect(color = NA), 
        legend.key.width = unit(0, "pt"),
        legend.spacing.x = unit(0, "pt")) 

ggsave("output/plot_facilitators_C.png", 
       plot = plot_facilitators_C)