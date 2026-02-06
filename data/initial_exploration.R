# Week 1: Initial Data Exploration ====
# Author: [Soham Chowdhury]
# Date: [30/01/2026]

# Load packages ====
# Load packages ====
library(tidyverse)
library(here)
library(naniar)
library(janitor)
library(skimr)

# Load data ====
mosquito_egg_raw <- read_csv(here("data", "mosquito_egg_data.csv"),
                             name_repair = janitor::make_clean_names)

# Basic overview ====
glimpse(mosquito_egg_raw)
summary(mosquito_egg_raw)
skim(mosquito_egg_raw)

# React table====
# view interactive table of data
view(mosquito_egg_raw)


# Counts by site and treatment====

mosquito_egg_raw |> 
  group_by(site, treatment) |> 
  summarise(n = n())

# Observations ====
# Your observations (add as comments below):
# - What biological system is this?
#   Mosquitos are part of the ecosystem
# - What's being measured?
#   The number of eggs laid and the number of eggs hatched
# - How many observations?
#   57
# - Anything surprising?
#   No
# - Any obvious problems?
#   Skimr wasn't working initially, but then I installed the packages and the problem was solved.





















