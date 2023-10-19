#' Generate likelihood ratio plot
#'
#' @param LR Likelihood ratio
#' @param LR_interval Uncertainty interval for likelihood ratio
#' @param prior_odds Prior odds estimate
#' @param prior_odds_interval Uncertainty interval for prior odds estimate
#' @param plot_rounding_digits Number of digits after decimal for rounding on plot (default, 2)
#'
#' @return Likelihood ratio plot
#' @export
#'
#' @examples
#' lik_ratio_plot(10, c(8, 12), .8, c(.6, 1))
lik_ratio_plot <- function(LR, LR_interval,
                    prior_odds,
                    prior_odds_interval, plot_rounding_digits=2)
{
  data <- create_plot_tibble(LR, LR_interval,
                                         prior_odds,
                                         prior_odds_interval)

  title <- get_plot_title(LR, LR_interval, prior_odds, prior_odds_interval)

  my_breaks <- get_breaks(LR, LR_interval, prior_odds, prior_odds_interval)
  my_labels <- get_labels(my_breaks, plot_rounding_digits)


  ggplot2::ggplot() +
    ggplot2::geom_abline(slope=LR) +
    ggplot2::geom_abline(slope=min(LR_interval), linetype="dashed") +
    ggplot2::geom_abline(slope=max(LR_interval), linetype="dashed") +
    ggplot2::geom_vline(xintercept=min(prior_odds), color="blue", alpha=.7) +
    ggplot2::geom_vline(xintercept=min(prior_odds_interval), linetype="dashed", color="blue", alpha=.7) +
    ggplot2::geom_vline(xintercept=max(prior_odds_interval), linetype="dashed", color="blue", alpha=.7) +
    ggplot2::geom_hline(yintercept=max(prior_odds_interval)*max(LR_interval), linetype="dashed", color="orange")+
    ggplot2::geom_hline(yintercept=min(prior_odds_interval)*min(LR_interval), linetype="dashed", color="orange")+
    ggplot2::geom_hline(yintercept=prior_odds*LR, color="orange")+
    ggplot2::geom_ribbon(ggplot2::aes(x=data$x, ymin=data$y_min, ymax=data$y_max), fill="orange", alpha=.5) +
    ggplot2::geom_hline(yintercept=1, linewidth=1.2, color="brown") +
    ggplot2::scale_x_continuous(limits = c(0, NA), expand=ggplot2::expansion(mult=c(0,.05)),
                       breaks = my_breaks$x_breaks, labels = my_labels$x_labels) +
    ggplot2::scale_y_continuous(limits=c(0, NA), expand=ggplot2::expansion(mult=c(0,.05)),
                       breaks=my_breaks$y_breaks, labels=my_labels$y_labels) +
    ggplot2::xlab("Prior odds") +
    ggplot2::ylab("Posterior odds") +
    ggplot2::theme(
      panel.background = ggplot2::element_rect(fill="white"),
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      axis.line = ggplot2::element_line()) +
    ggplot2::ggtitle(title)
}
