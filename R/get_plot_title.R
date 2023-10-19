
get_plot_title <- function(LR, LR_interval, prior_odds, prior_odds_interval){

  title_paste_LR <- paste0("Likelihood ratio: ", LR,
                           ", range: (", min(LR_interval), ",", max(LR_interval), ")")
  title_paste_ratio <- paste0("Prior odds: ", prior_odds,
                                  ", range: (", min(prior_odds_interval), ",", max(prior_odds_interval), ")")

  paste0(title_paste_LR, "\n", title_paste_ratio)

}
