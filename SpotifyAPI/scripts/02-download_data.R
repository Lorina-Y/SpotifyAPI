#### Preamble ####
# Purpose: Downloads and saves the data from 
# Author: Hanqing Yang 
# Date: 10 October 2023 
# Contact: hanq.yang@mail.utoronto.ca 
# License: MIT
# Pre-requisites: N/A
# Any other information needed? 


#### Workspace setup ####
##install.packages("devtools") 
#devtools::install_github("charlie86/spotifyr")
#install.packages("spotifyr") 
library(spotifyr)
library(tidyverse)

#### Download data ####
twice <- get_artist_audio_features("twice")
aespa <- get_artist_audio_features("aespa")
girlsgeneration <- get_artist_audio_features("Girl'sgeneration")

#### Save data ####
saveRDS(aespa,'data/01-raw_data/aespa.rds')
saveRDS(twice,'data/01-raw_data/twice.rds')
saveRDS(girlsgeneration,'data/01-raw_data/girlsgeneration.rds')
twice <- readRDS("data/01-raw_data/twice.rds")
aespa <- readRDS("data/01-raw_data/aespa.rds")
girlsgeneration <- readRDS("data/01-raw_data/girlsgeneration.rds")


         
