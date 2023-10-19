get_breaks <- function(LR, LR_interval, prior_odds, prior_odds_interval){
  x_breaks <- c(min(prior_odds_interval), prior_odds, max(prior_odds_interval))
  y_breaks <- c(1,
                min(prior_odds_interval)*min(LR_interval),
                prior_odds*LR,
                max(prior_odds_interval)*max(LR_interval)
  )
  list(x_breaks=x_breaks, y_breaks=y_breaks)
}
