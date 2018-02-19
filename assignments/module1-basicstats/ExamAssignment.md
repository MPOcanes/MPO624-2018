# Module 1 essentials
### Problems to do. Turn in next Tuesday. 
### An in-class mini-exam Tuesday (30 minutes) will ask a few of these key points, so make sure they actually go in your head, and you understand them. 

1. Know the word _deviation_ or _perturbation_ (indicating that the mean of a variable has been removed). Know that in our field, _anomaly_ and _eddy_ are special words for deviations from _temporal_ and _spatial_ averages, respectively. Know the word _standardized_ (indicating that the deviation has been normalized by standard deviation: standardized variables are _unitless_). 

2. You should understand the following: 

  a. The _value of a standardized variable_ is also called a _Z-score_. A _score_ is a number used in a test for 'statistical significance', a meaasure of the _confidence_ you should have in some _claim_ based on data. The Z-score is used in the [_Z test_](https://en.wikipedia.org/wiki/Z-test). When your sample is small (N<20 or so), you should instead use the _t-score_ (which is a function of N, as well as of the standardized value; it asymptotes to the Z-score for large N). The t-score is used in the [_Student's t-test_](https://en.wikipedia.org/wiki/Student%27s_t-test), the most famous test in statistics. 
  
  b. These _tests_ estimate the [p-value](https://en.wikipedia.org/wiki/P-value), which is _the probability that a **randomly generated** score **if the null hypothesis were true**_ would be of _equal or greater magnitude_ than the **actual score**  you are testing before your claim can be declared 'statistically significant'. That is, you are testing whether your data _falsifies your null hypothesis._ This is a weak and roundabout measure of the strength of evidence, and requires you to **explicily define your null hypothesis**. A serious student should laugh at [this cartoon](https://xkcd.com/882/); and more seriously should read and ponder [this paper](https://journals.ametsoc.org/doi/abs/10.1175/2010JCLI3746.1) or other recent works on the [replication crisis in science](https://en.wikipedia.org/wiki/Replication_crisis), which partly attributed to the disreputable (but tempting) process of [_p-hacking_](https://en.wikipedia.org/wiki/Data_dredging). Understand this [cartoon](https://xkcd.com/1478/) and _don't be that person!_

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
