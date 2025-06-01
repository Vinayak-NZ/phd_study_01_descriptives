## ---- cross-case-challenges

dhi.labels <- c("DHI A", 
                "DHI B", 
                "DHI C")

challenges.labels <- c("Unclear expectations", 
                       "Competing needs", 
                       "Language or \ncustom differences", 
                       "Difficult co-creator \nrelationships",
                       "Poor planning of \ncollaboration",
                       "Limited exchange",
                       "Resource constraints",
                       "Difficulties recruiting \nco-creators",
                       "Failure to \nacknowledge",
                       "Skills or \nknowledge gap", 
                       "Difficulties distributing \nworkload", 
                       "Other")

cc_challenges_plot <- 
  ggplot(cross_case_challenges, aes(challenge_imp_label, case)) + 
  geom_point(size = 5,colour = "#4739a2") + 
  labs(title = paste0("Cross-case synthesis"), 
       subtitle = "Scatterplot of prominent challenges for each case",
       caption = "Data source: DHI A, B and C") +
  xlab("Prominent challenges") + 
  ylab("Case") +
  scale_x_discrete(labels = challenges.labels) +
  scale_y_discrete(labels = dhi.labels) +
  theme(panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        panel.grid = element_line(color = "#e18b22", linewidth = 0.2, linetype = 2),
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic")
  )

ggsave("output/cc_challenges_plot.png", 
       plot = cc_challenges_plot)

## ---- cross-case-facilitators
facilitators.labels <- c("Co-creator exchanges", 
                       "Leverage strengths", 
                       "Adaptive process", 
                       "Transparent communication",
                       "Needs analysis",
                       "Targeted recruitment",
                       "Facilitation strategies",
                       "Feasible design",
                       "Trust and \ndependability",
                       "Prototype or \ndemo", 
                       "Top-down management")

cc_facilitators_plot <- 
  ggplot(cross_case_facilitators, aes(facilitators_imp_label, case)) + 
  geom_point(size = 5,colour = "#4739a2") + 
  labs(title = paste0("Cross-case synthesis"), 
       subtitle = "Scatterplot of prominent facilitaors for each case",
       caption = "Data source: DHI A, B and C") +
  xlab("Prominent facilitators") + 
  ylab("Case") +
  scale_x_discrete(labels = facilitators.labels) +
  scale_y_discrete(labels = dhi.labels) +
  theme(panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        panel.grid = element_line(color = "#e18b22", linewidth = 0.2, linetype = 2),
        plot.title = element_text(color = "#2F2E41", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "#454543"),
        plot.caption = element_text(color = "#454543", face = "italic")
  )

ggsave("output/cc_facilitators_plot.png", 
       plot = cc_facilitators_plot)