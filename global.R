#########################
####  Load packages  ####
#########################

library("DT")
library("shiny")
library("shinydashboard")
library("synapser")
library("purrr")
library("emo")
library("dccvalidator")

## Enable bookmarking
enableBookmarking(store = "url")

#####################
####  Functions  ####
#####################

report_result <- function(result, emoji_prefix = NULL) {
  p(emo::ji(emoji_prefix), result$message)
}

report_results <- function(results, emoji_prefix = NULL) {
  map(results, report_result, emoji_prefix = emoji_prefix)
}
