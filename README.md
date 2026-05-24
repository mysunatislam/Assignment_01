# Assignment 1: The Clinical Pipeline Challenge

## Section 1: Biomarker Identification

Gene_C exhibits the anomalous split sub-distribution within the Normal control group.


## Section 2: The Biological Paradox

Most healthy individuals show low Gene_C expression levels. However, a smaller subset of healthy patients displays unusually high Gene_C expression values that overlap with the Tumor group.

The boxplot summarizes the overall distribution, but the jittered individual sample points reveal this hidden subgroup more clearly. This creates a bimodal-like distribution pattern within the Normal cohort.


## Section 3: The Biomedical Engineering Design Flaw

Using only the arithmetic mean average for Gene_C would produce a misleading interpretation of the Normal group. The presence of a small subgroup with abnormally high expression values artificially increases the average expression level.

As a result, the mean fails to accurately represent the true distribution of the healthy population.

If a diagnostic threshold were engineered using only this flat average metric, healthy individuals with naturally elevated Gene_C expression could be incorrectly classified as cancer patients. This would generate false positive diagnoses, unnecessary clinical testing, and incorrect medical decisions.

The issue becomes especially dangerous in bimodal distributions where a single average value cannot properly represent distinct biological subgroups.
- readr

## Repository Files
- `A.R` — Data cleaning
- `A1.R` — Data merging and reshaping
- `A2.R` — Data visualization

## Author
Mysunat Islam
