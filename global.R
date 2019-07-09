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

report_result <- function(result, emoji_prefix = NULL, verbose = FALSE) {
  if (isTRUE(verbose)) {
    div(
      class = "result",
      div(
        class = "wide",
        emo::ji(emoji_prefix),
        result$message,
        ## Include details drawer for verbose == TRUE
        tags$details(paste0(result$data, collapse = ", "))
      ),
      div(
        class = "more-info",
        p(result$behavior)
      )
    )
  } else {
    div(
      class = "result",
      div(
        class = "wide",
        emo::ji(emoji_prefix),
        result$message
      ),
      div(
        class = "more-info",
        p(result$behavior)
      )
    )
  }
}

report_results <- function(results, ...) {
  map(results, report_result, ...)
}
