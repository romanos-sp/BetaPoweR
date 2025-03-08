# BetaPoweR
Repository holding code for BetaPoweR package. <br />

*Estimate power to detect difference in beta-distributed proportions between two groups of variable size.* 

## Load package
```
library(devtools) <br />
load_all('~/BetaPower/')
```

## Input variables
mu0: *mean of group 0 (float)* <br />
sd0: *SD of group 0 (float)* <br />
sd1: *SD of group 1 (float)* <br />
mu1_min: *minimum mean of group 1 to be tested (float)* <br />
mu1_max: *maximum mean of group 1 to be tested (float)* <br />
mu1_step: *step increase for mu1 (float)* <br />
n0s: *vector of sample sizes (int) to be tested for group 0* <br />
n1s: *vector of sample sizes (int) to be tested for group 1* <br />
    *(length should be equal to length of n0s vector; they will be paired to sample sizes for group 0 by index)* <br />
N: *number of simulations (int)* <br />
a: *significance level for p-value (float)* <br />
q: *significance level for adjusted p-value (float)* <br />
Nsites: *number of tests to correct the p-value for (Bonferroni) (int)* <br />

## Calculate power based on beta distribution
```
data <- beta_curve(mu0 = 0.1, sd0 = 0.08, mu1_min = 0.1, mu1_max = 0.2, mu1_step = 0.01, sd1 = 0.08, n0s = c(10, 10, 25, 25), n1s = c(10, 25, 10, 25), N = 100, a = 0.05, q = 0.05, Nsites = 1000)
```

## Write power plot
```
png("PowerPlot.png", res = 300, units="in", width = 5, height = 5) <br />
plot_beta_curve(data = data, a = 0.05, q = 0.05) <br />
dev.off()
```
