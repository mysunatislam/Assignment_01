# Combine datasets
combined_tbl <- inner_join(
  expr_tbl,
  clinic_tbl,
  by = c("ID" = "Patient_ID")
)


# Reshape data
tidy_tbl <- combined_tbl %>%
  pivot_longer(
    c(Gene_A, Gene_B, Gene_C),
    names_to = "Biomarker",
    values_to = "Signal"
  )


