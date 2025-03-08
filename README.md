# BetaPoweR
Repository holding code for BetaPoweR package

##Load package
library(devtools)
load_all('~/BetaPower/')

##Input variables
-mu0: mean of group 0 (num)
-sd0: SD of group 0 (num)
-sd1: SD of group 1 (num)
-mu1_min: minimum mean of group 1 to be tested (num)
-mu1_max: maximum mean of group 1 to be tested (num)
-mu1_step: step increase for mu1 (num)
-n0s: vector of sample sizes to be tested for group 0
-n1s: vector of sample sizes to be tested for group 1 (length should be equal to length of n0s vector; they will be paired to sample sizes for group 0 by index)
-N: number of iterations (num)
-a: significance level for p-value (num)
-q: significance level for adjusted p-value (num)
-Nsites: number of tests to correct the p-value for (Bonferroni) (num)

##Calculate power based on beta distribution
data <- beta_curve(mu0 = 0.1, sd0 = 0.08, mu1_min = 0.1, mu1_max = 0.2, mu1_step = 0.01, sd1 = 0.08, n0s = c(10, 10, 25, 25), n1s = c(10, 25, 10, 25), N = 100, a = 0.05, q = 0.05, Nsites = 1000)

##Write power plot
png("PowerPlot.png", res = 300, units="in", width = 5, height = 5)
plot_beta_curve(data = data, a = 0.05, q = 0.05)
dev.off()
