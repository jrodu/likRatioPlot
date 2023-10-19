
create_plot_tibble <- function(LR, LR_interval,
                               prior_odds,
                               prior_odds_interval){
  tibble::tibble(x=c(min(prior_odds_interval), max(prior_odds_interval)),
                 y_min=c(min(prior_odds_interval)*min(LR_interval), max(prior_odds_interval)*min(LR_interval)),
                 y_max=c(min(prior_odds_interval)*max(LR_interval), max(prior_odds_interval)*max(LR_interval))
  )
}
