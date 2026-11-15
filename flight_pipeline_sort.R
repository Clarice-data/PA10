# flight_pipeline_sort.R
# Clarice Landman-Montano
# 11/15/2026
# Sort and select NYC flight data using pipes


library(tidyverse)
library(nycflights13)

# Sort flights by departure times and delay
flight_results <- flights %>%
  arrange(sched_dep_time, desc(dep_delay))  %>%
  select(sched_dep_time, dep_delay, carrier, day)

# Display the results
print(flight_results)