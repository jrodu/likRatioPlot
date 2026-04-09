w=7
h=3.65

library(ggplot2) # for ggsave

lik_ratio_plot(59, c(53, 65), .01, c(.004, .02))
ggsave("LR_glass.pdf", width=w, height = h, units="in")
lik_ratio_plot(7.255, c(7.05, 7.45), .01, c(.004, .02))
ggsave("LR_glass_t.pdf", width=w, height = h, units="in")
lik_ratio_plot(10, c(8, 12), .8, c(.6, 1))
ggsave("LR_10_dot8.pdf", width=w, height = h, units="in")
lik_ratio_plot(10, c(8, 12), .2, c(.05, .35))
ggsave("LR_10_dot2.pdf", width=w, height = h, units="in")
lik_ratio_plot(2, c(1, 3), .8, c(.6, 1))
ggsave("LR_2_dot8.pdf", width=w, height = h, units="in")
lik_ratio_plot(2, c(1, 3), .2, c(.05, .35))
ggsave("LR_2_dot2.pdf", width=w, height = h, units="in")
lik_ratio_plot(13, c(.65, 25.35), 1.085, c(.67, 1.5))
ggsave("LR_L_hpo.pdf", width=w, height = h, units="in")
lik_ratio_plot(13, c(.65, 25.35), .27, c(.11, .43))
ggsave("LR_L_LPO.pdf", width=w, height = h, units="in")
