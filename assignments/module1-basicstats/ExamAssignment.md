# Module 1 essentials 
### Problems to do. Turn in next Tuesday. 
#### An in-class mini-exam Tuesday (30 minutes) will ask a few of these key points, so make sure they actually go in your head, and you understand them. 

1. Know the word _deviation_ or _perturbation_ (indicating that the _mean_ of your set of numbers has been subtracted). Know that in our field, _anomaly_ means a deviation from a _time_ average, while _eddy_ means a deviation from a _spatial_ average. Know the adjective  _standardized_ (indicating a deviation that has been divided by the _standard deviation_: this makes standardized variables _unitless_). 

2. You should understand the following: 

  a. The _value of a standardized variable_ is also called a _Z-score_. A **score** is a number used in a test for 'statistical significance', which is a meaasure of the _confidence_ you should have in some _claim_ based on data. The Z-score is used in the [_Z test_](https://en.wikipedia.org/wiki/Z-test). When your sample is small (N<20 or so), you should instead use the _t-score_ (which is a function of N, as well as of the standardized value; it asymptotes to the Z-score for large N). The t-score is used in the [_Student's t-test_](https://en.wikipedia.org/wiki/Student%27s_t-test), the most famous test in statistics. 
  
  b. These _tests_ estimate the [p-value](https://en.wikipedia.org/wiki/P-value), which is _the probability that a **randomly generated** score **if the null hypothesis were true**_ would be of _equal or greater magnitude_ than the **actual score**  you are testing before your claim can be declared 'statistically significant'. That is, you are testing whether your data _falsifies your null hypothesis._ This is a weak and roundabout measure of the strength of evidence. It requires you to **explicily define your null hypothesis**, and also you need to worry about the difference between _a priori_ significance and _a posteriori_ significance, by laughing knowingly at [this cartoon](https://xkcd.com/882/). More seriously, you should read and ponder [this paper](https://journals.ametsoc.org/doi/abs/10.1175/2010JCLI3746.1) or other recent works on the [replication crisis in science](https://en.wikipedia.org/wiki/Replication_crisis), which partly attributed to the disreputable (but tempting) process of [_p-hacking_](https://en.wikipedia.org/wiki/Data_dredging). Understand this [cartoon](https://xkcd.com/1478/) and _don't be that person!_

3. Know about linear correlation and regression: Know the definitions of cov(X,Y) = cov(Y,X), std(X) and std(Y), and _r_ (the correlation coefficient). Know the definitions of reg(Y,X) and reg(X,Y), which are **not equal**, and not even reciprocal of each other. Know that the _fraction of variance explained by the linear regression term_ is equal to the **square of r**. 

4. Know the _principle of minimizing the sum of squares of residue_, valid for so many kinds of data modeling (or curve fitting). Show that for linear regression, it is equivalent to the simpler principle that _the regression term captures all of the linear relationship with the "predictor" (or "independent") variable_, so that _the residual is uncorrelated with the predictor variable_. Know how to explain these principles in your own words -- that is, how to convince me that you really understand them **correctly and completely** -- with extra stars for expressing that _concisely_. 

5. A word problem: 
When you put a pot of water on a heated stove, the water convects. The temperature at the top of the pan rises because of a fluid _heat flux_ wT. Do the problem (on a separate sheet

---------
### Vocabulary tables: 

#### Data terms: Simple statistics and regression
Term | Formula: use sets {X<sub>i</sub>}; use primes and bars like X̅, X̅'̅Y̅'̅; or use cor(X,Y), cov(X,Y), std(Y), var(Y). For the mini-exam be ready to use both, and also to write the summation notation (Σ for sums) if need be. Also write the _meaning_. Overline ̅.
-----|--------
Set of numbers | 
Ordered " " " | 
_Series_ (equally spaced " " " ") |
Mean | 
Deviation | 
Anomaly | 
Eddy |
Variance | 
Standard deviation |
RMS | 
Standardized | 
Covariance or _Projection_ |
Correlation coefficient (Pearson's r) |
**Information content** | How many _independent pieces of information_ are in the data?
DOFs (degrees of freedom)| 
Decomposition, Reconstruction |
_Postulated_ terms | 
Residual term | 
Partial reconstruction | 
**Relationships** | about **sets of pairs** of numbers
Unrelated | 
Orthogonal | 
Linearly independent | 
Collinearity | 
Redundant | 
**Regression** | words about _linear_ regression 
Independent variable or 'predictor' | 
Dependent variable | 
Regression coefficient (or _slope_) | 
Signal | 
Noise | 
Error |
Bias | 
Random error | 
The 'prediction' | 
'Explained' variance | 
Fraction of variance explained | Write formula in terms of r: 

#### Probability theory terms: 
Give the formula **and meaning**, using P(X) P(X,Y) P(X &#124; Y), and integrals ∫ or ∫∫ over infinite domain -∞ to ∞

Term | Meaning, and where appropriate, mathematical formulas in the form of integrals from -∞ to ∞. 
-----|--------
Random variable | 
Event or realization | 
Population (vs. sample) | 
Independent events | 
**Interpretations of probability** | Frequentist vs. Bayesian 
Frequentist | 
[Bayesian](https://en.wikipedia.org/wiki/Bayesian_statistics) | 
Prior |
New information | 
Posterior | 
[Bayes' theorem](https://en.wikipedia.org/wiki/Bayes%27_theorem) | 
**Probability distribution** | 
Contingency table | 
[Monty Hall problem](http://marilynvossavant.com/game-show-problem/) [Wiki](https://en.wikipedia.org/wiki/Monty_Hall_problem) | Too big for this little slot! Write on back. 
**Probability density** (continuous) | 
Expectation value (mean) | 
Maximum likelihood (median) | 
Likelihood | 
What are P(T) units? | For temperature T in K? Answer: 
First moment (mean) | 
Second moment (RMS) | 
Third moment (related to skew) | 
Skew or skewness | 
**Multivariate probability density** | Use P(T,w) for definiteness: T in _K_ and w in _m/s_. w̅'̅T̅'̅ is a _heat flux_. 
Joint distribution | 
What are P(T,w) units? | Answer: 
Cross moment (covariance, our heat flux) | 
Marginal distribution of T | 
Conditional distribution of T at w= 1 m/s | 
Units of marginal  | 
Units of conditional | 
**Kinds of integrals** | Continuous versions of conceps from data summations
Projection | 
Independent | 
Orthogonal | 
Convolution | 
Kernel | 

