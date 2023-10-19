#' Generate a tibble of data needed for plotting
#'
#' @param LR Likelihood ratio
#' @param LR_interval Uncertainty interval for likelihood ratio
#' @param prior_odds Prior odds estimate
#' @param prior_odds_interval Uncertainty interval for prior odds estimate
#'
#' @return tibble with data needed for plotting
create_plot_tibble <- function(LR, LR_interval,
                               prior_odds,
                               prior_odds_interval){
  tibble::tibble(x=c(min(prior_odds_interval), max(prior_odds_interval)),
                 y_min=c(min(prior_odds_interval)*min(LR_interval), max(prior_odds_interval)*min(LR_interval)),
                 y_max=c(min(prior_odds_interval)*max(LR_interval), max(prior_odds_interval)*max(LR_interval))
  )
}
