#### Preamble ####
# Purpose: Simulates
# Author: Mingjin Zhan
# Date: 19 Sep 2024 
# Contact: mingjin.zhan@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(123)


# Define the start and end date
start_date <- as.Date("2011-01-01")
end_date <- as.Date("2014-12-31")


# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")

