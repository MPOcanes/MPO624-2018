# Module 1 essentials
### Problems to do. Turn in next Tuesday. 
### Mini-exam Tuesday will ask a few of the key points of it. 

1. Know the word _deviation_ or _perturbation_ (indicating that the mean of a variable has been removed). Know that in our field, _anomaly_ and _eddy_ are special words for deviations from _temporal_ and _spatial_ averages, respectively. Know the word _standardized_ (indicating that the deviation has been normalized by standard deviation: standardized variables are _unitless_). 

2. You should understand the following: 

  a. The _value of a standardized variable_ is also called a _Z-score_. A _score_ is a number used in a test for statistical 'significance'. The Z-score is used in the [_Z test_](https://en.wikipedia.org/wiki/Z-test). When your sample is small (N<20 or so), you should instead use the t-score (which is a function of N as well as of your standardized value). The t-score goes into the [Student's t-test](https://en.wikipedia.org/wiki/Student%27s_t-test). 
  
  b. These _tests_ estimate the [p-value](https://en.wikipedia.org/wiki/P-value), which is _the probability that a randomly generated score **if the null hypothesis were true**_ would be of _equal or greater magnitude_ than the actual score you are testing for its 'significance'. That is, you are testing whether your data _falsifies your null hypothesis._ 

3. Know the definitions of cov(X,Y) = cov(Y,X), std(X) and std(Y), _r_ (the correlation coefficient), reg(Y,X) and reg(X,Y) which are **not equal**. Know the 

2. Know the _principle of least squares_. Know that, for simple regression, it is equivalent to the principle that _the regression term captures all of the linear relationship with the "predictor" (or "independent") variable_, so that _the residual is uncorrelated with the predictor variable_. Know how to explain these in your own words -- that is, how to _convince me_ that you really understand these principles!

3. Do the worksheet (TakeHomeAssignment.ipynb) which has the proper math symbols that Markdown can't display. 

4. Understand these terms well enough to explain them in your own words (or perhaps math jots), **correctly and completely** -- with extra points for _concisely_. 

### Vocabulary tables: 

#### Data terms: Simple statistics and regression
Term | Formula and meaning: use X̅, Y̅, X̅'̅Y̅'̅ (cut & paste from here); or cor(), cov(), std(), var().
-----|--------
Mean | 
Variance | 
Standard deviation |
RMS | 
Anomaly | 
Eddy | 
Perturbation | 
Standardized | 
Covariance |
Correlation coefficient (Pearson's r) |
Signal | 
Noise | 
Postulated terms | 
Residual term | 
Error |
Bias | 
Random error | 
Independent variable or 'predictor' | 
Dependent variable | 
Linear regression coefficient | 
Unrelated | 
Orthogonal | 
Linearly independent | 
Collinear | 
Redundant | 


#### Probability theory terms: 

Term | Formula and meaning: functions P(X) P(X,Y) P(X\|Y), Integrals over infinite domain
-----|--------
**Interpretations of probability** | 
Frequentist | 
Bayesian | 
Prior |
New information | 
Posterior | 
Bayes' theorem | 
**Probability distribution** | 
Contingency table | 
Monty Hall problem | 
**Probability density** (continuous) | 
First moment (related to mean) | 
Second moment (related to variance) | 
Third moment (related to skew) | 
Skew or skewness | 
**Multivariate** 
Joint distribution | 
Cross moment (related to covariance) | 
Marginal distribution | 
Conditional distribution | 
Projection | 
Independent | 
Orthogonal | 
Convolution | 
Kernel | 
