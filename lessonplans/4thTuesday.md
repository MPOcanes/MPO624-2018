# Fourth Tuesday
## Time for some statistical material, at last 

### Largely a vocabulary lesson, aiming toward a test 

Probability
  - Frequentist
  - Bayesian 
    - prior information, data, posterior 
  
Random variable (vs. deterministic variable) 

Event, Realization

Population, Sample

Biased sample

Distribution vs. density (PDF) 

Likelihood 

CDF

Moments and other summaries of distributions
  - Central value
    - mean (first moment) and expected value
    - median
    - mode (likelihood peak)
  - Spread (dispersion, variation) 
    - range
    - L1 norm (mean absolute deviation) 
    - L2 norm (variance) var(x) 
    - stdev
    - skew and kurtosis
   Spread (variance) of a function or combination of variables 
   
Central Limit Theorem and "Normal" distribution
  - and its undersampled cousin the Student's t distribution 
  - and chi-squared distribution 
  - The F distribution, the ratio of sample variances from a Normal population. 
    - all depend on number of samples, and level out for n > 20 say

Standardized variables 
  - Z score: how many sigma from the mean
  - converts to a "p value" based on the Normal distribution
    - one or two tailed
    - t test, for small samples
  
Multivariate distributions
  - joint
  - marginal
  - conditional
  
Scatter plots and covariance 
  - "Independent" variables
    - linearly independent
    - orthogonal, uncorrelated

Contingency tables 

------- Statistics 

Estimation, estimator, statistic 

Parametric vs. nonparametric 

Histogram, kernel density estimator -- "relative frequency"

consistent vs. inconsistent statistic (does sample size improve it) 
  - efficient: converges quickly 

unbiased vs. biased statistic (often, maximum likelihood) 

robust (to outliers) 
  - like rank 

"Ideally, it is best to use consistent, unbiased and efficient estimators"

mean squared error MSE, and RMS 

Hypothesis testing 
  - Null hypothesis
  - Occam's Razor and parsimony 
  - false positive, false negativ 
  
1) Specify a test statistic
2) Specify a level of significance 
3) Determine the limiting value(s) of the test statistic that correspond 
  - If the test statistic does not fall within the critical region, cannot reject the null hypothesis 

Degrees of freedom (d.f. or ν) is an important concept in statistics as well as mathe- matics, modeling and physics. In statistics, degrees of freedom represent the number of independent observations used to estimate a population parameter. Effectively, they may be thought of as representing the number of independent observations in the sample (n) minus the number of parameters already estimated from these n observations (np)

Level of Significance 
  - S/N ratio
  
Confidence interval, p-value, and 95% convention 
  - standard error of the mean 
  
The t test or Student’s t test is used most frequently to (1) compare a sample mean to a hypothetical mean or (2) compare two sample means, when sample sizes are small (say, n ≤ 25). For the former, the test is performed as done previously with the Z statistic
  
Monte carlo approaches 
  - Resampling, bootstrap, jackkinfe

5 percent significanc: xkcd jellybeans 








