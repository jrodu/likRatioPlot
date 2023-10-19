#' Create breaks for likelihood ratio plot
#'
#' @param LR Likelihood ratio
#' @param LR_interval Uncertainty interval for likelihood ratio
#' @param prior_odds Prior odds estimate
#' @param prior_odds_interval Uncertainty interval for prior odds estimate
#'
#' @return list with breaks for x axis and y axis
get_breaks <- function(LR, LR_interval, prior_odds, prior_odds_interval){
  x_breaks <- c(min(prior_odds_interval), prior_odds, max(prior_odds_interval))
  y_breaks <- c(1,
                min(prior_odds_interval)*min(LR_interval),
                prior_odds*LR,
                max(prior_odds_interval)*max(LR_interval)
  )
  list(x_breaks=x_breaks, y_breaks=y_breaks)
}
