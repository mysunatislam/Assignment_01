# Plot
ggplot(
  tidy_tbl,
  aes(
    Condition,
    Signal,
    fill = Condition
  )
) +
  
  geom_boxplot(
    alpha = 0.8,
    outlier.shape = NA
  ) +
  
  geom_jitter(
    width = 0.1,
    alpha = 0.6,
    size = 2
  ) +
  
  facet_wrap(
    ~Biomarker,
    scales = "free"
  ) +
  
  scale_fill_manual(
    values = c(
      "Normal" = "#3A86FF",
      "Tumor" = "#E63946"
    )
  ) +
  
  labs(
    title = "Expression Profile of Target Biomarkers",
    subtitle = "Comparison Between Normal and Tumor Samples",
    x = "Clinical Group",
    y = "Expression Intensity"
  ) +
  
  theme_bw() +
  
  theme(
    plot.title = element_text(
      face = "bold",
      size = 15
    ),
    
    strip.text = element_text(
      face = "bold",
      size = 11
    ),
    
    legend.position = "none"
  )


# Export figure
ggsave(
  filename = "biomarker_expression_plot.png",
  width = 9,
  height = 5.5
)
