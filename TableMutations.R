TotalScore <- TotalScore %>%
  mutate(
    Date = as.Date(Date),  # Remove the time and convert to Date format
    Date = c(seq.Date(as.Date("2024-07-01"), as.Date("2024-07-10"), by = "day"),
             rep(as.Date("2024-07-11"), 2),
             seq.Date(as.Date("2024-07-12"), as.Date("2024-07-31"), by = "day")))
