#Example Code
library(devtools)
load_all('~/Desktop/BetaPower/')
data <- beta_curve(mu0 = 0.1, sd0 = 0.08, mu1_min = 0.1, mu1_max = 0.2, mu1_step = 0.01, sd1 = 0.08, n0s = c(10, 10, 25, 25), n1s = c(10, 25, 10, 25), N = 100, a = 0.05, q = 0.05, Nsites = 1000)
plot_beta_curve(data = data, a = 0.05, q = 0.05)
