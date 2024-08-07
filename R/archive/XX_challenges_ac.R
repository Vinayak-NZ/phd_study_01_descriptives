# challenges-ac-case
challenges_ac_table$academic <- 
  ifelse(challenges_ac_table$academic == 0, 
         "non-academic stakeholder", 
         "academic stakeholder")

challenges_ac_table_A <- challenges_ac_table[challenges_ac_table$case == "A", ]

challenges_ac_table_B <- challenges_ac_table[challenges_ac_table$case == "B", ]

challenges_ac_table_C <- challenges_ac_table[challenges_ac_table$case == "C", ]

ac_group <- c(
  'academic stakeholder' = "Academic co-creator",
  'non-academic stakeholder' = "Non-academic co-creator"
)

ggplot(challenges_ac_table_A, 
       aes(reorder(code, 
                   -percentage), 
           y = percentage, 
           fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  facet_grid(~academic, 
             labeller = as_labeller(ac_group)) +
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case A between stakeholder groups",
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


ggplot(challenges_ac_table_A, 
       aes(reorder_within(code, 
                          -percentage, 
                          academic), 
           y = percentage, 
           fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  facet_grid(~academic, 
             scales = 'free_x',
             labeller = as_labeller(ac_group)) +
  scale_x_reordered() +
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case A between stakeholder groups",
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

ggplot(challenges_ac_table_B, 
       aes(reorder_within(code, 
                          -percentage, 
                          academic), 
           y = percentage, 
           fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  facet_grid(~academic, 
             scales = 'free_x',
             labeller = as_labeller(ac_group)) +
  scale_x_reordered() +
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case B between stakeholder groups",
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

ggplot(challenges_ac_table_C, 
       aes(reorder_within(code, 
                          -percentage, 
                          academic), 
           y = percentage, 
           fill = code)) + 
  geom_bar(key_glyph = draw_key_blank, stat = "identity") + 
  facet_grid(~academic, 
             scales = 'free_x',
             labeller = as_labeller(ac_group)) +
  scale_x_reordered() +
  scale_fill_manual(values = rep("#4739a2", 
                                 length(labels.challenges)), 
                    labels = labels.challenges) +
  ylim(0, 30) +
  labs(title = paste0("Challenges of co-creating digital health interventions"), 
       subtitle = "Bar chart of challenges for case C between stakeholder groups",
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
