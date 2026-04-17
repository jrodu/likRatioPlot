w=7
h=3.65

devtools::load_all()
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
lik_ratio_plot(13, c(11, 18), 1, c(.67, 1.5))
ggsave("LR_L_hpo.pdf", width=w, height = h, units="in")
lik_ratio_plot(13, c(11, 18), .25, c(.11, .43)) +
  scale_y_continuous(breaks=c(1, 1.21, 3.25, 7.74),
                     labels = c("\n1", "1.21", "3.25", "7.74")) #add jitter
                                                        #to '1' on y axis to
                                                        #avoid clash with 1.21.
                                                        #Clashes when using aspect ratio
                                                        #for publication plot
ggsave("LR_L_lpo.pdf", width=w, height = h, units="in")
