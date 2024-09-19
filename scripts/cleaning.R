#### Preamble ####
# Purpose: Clean data
# Author: Mingjin Zhan
# Date: 19 Sep 2024 
# Contact: mingjin.zhan@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)


#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "15", sep = "-"))
  )


#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")

