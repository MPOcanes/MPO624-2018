# Fourth Tuesday
Time for some statistical material, at last
Largely a vocabulary lesson, aiming toward a test
Probability

Frequentist
Bayesian
prior information, data, posterior
Random variable (vs. deterministic variable)

Event, Realization

Population, Sample

Biased sample

Distribution vs. density (PDF)

Likelihood

CDF

Moments and other summaries of distributions

Central value
mean (first moment) and expected value
median
mode (likelihood peak)
Spread (dispersion, variation)
range
L1 norm (mean absolute deviation)
L2 norm (variance) var(x)
stdev
skew and kurtosis Spread (variance) of a function or combination of variables
Central Limit Theorem and "Normal" distribution

and its undersampled cousin the Student's t distribution
and chi-squared distribution
The F distribution, the ratio of sample variances from a Normal population.
all depend on number of samples, and level out for n > 20 say
Standardized variables

Z score: how many sigma from the mean
converts to a "p value" based on the Normal distribution
one or two tailed
t test, for small samples
Multivariate distributions

joint
marginal
conditional
Scatter plots and covariance

"Independent" variables
linearly independent
orthogonal, uncorrelated
Contingency tables

------- Statistics

Estimation, estimator, statistic

Parametric vs. nonparametric

Histogram, kernel density estimator -- "relative frequency"

consistent vs. inconsistent statistic (does sample size improve it)

efficient: converges quickly
unbiased vs. biased statistic (often, maximum likelihood)

robust (to outliers)

like rank
"Ideally, it is best to use consistent, unbiased and efficient estimators"

mean squared error MSE, and RMS

Hypothesis testing

Null hypothesis
Occam's Razor and parsimony
false positive, false negativ
Specify a test statistic
Specify a level of significance
Determine the limiting value(s) of the test statistic that correspond
If the test statistic does not fall within the critical region, cannot reject the null hypothesis
Degrees of freedom (d.f. or ν) is an important concept in statistics as well as mathe- matics, modeling and physics. In statistics, degrees of freedom represent the number of independent observations used to estimate a population parameter. Effectively, they may be thought of as representing the number of independent observations in the sample (n) minus the number of parameters already estimated from these n observations (np)

Level of Significance

S/N ratio
Confidence interval, p-value, and 95% convention

standard error of the mean
The t test or Student’s t test is used most frequently to (1) compare a sample mean to a hypothetical mean or (2) compare two sample means, when sample sizes are small (say, n ≤ 25). For the former, the test is performed as done previously with the Z statistic

Monte carlo approaches

Resampling, bootstrap, jackkinfe
5 percent significanc: xkcd jellybeans


# Symbols and notations in Science

*Coefficients* 

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;a}\newline&space;{\color{Red}&space;b}\newline&space;{\color{Red}&space;c}\newline&space;{\color{Red}&space;d})

*Functions*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;e}\newline&space;{\color{Red}&space;f}\newline&space;{\color{Red}&space;g}\newline&space;{\color{Red}&space;h})

*Indices*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;i}\newline&space;{\color{Red}&space;j}\newline&space;{\color{Red}&space;k}\newline&space;{\color{Red}&space;l}\newline&space;{\color{Red}&space;m}\newline&space;{\color{Red}&space;n})

*Arbitrary variables*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;p}\newline&space;{\color{Red}&space;q}\newline&space;{\color{Red}&space;r}\newline&space;{\color{Red}&space;s})

*Time*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;t})

*Fluid Dynamics*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;u}\newline&space;{\color{Red}&space;v}\newline&space;{\color{Red}&space;w})

*Cartesian coordinates*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;x}\newline&space;{\color{Red}&space;y}\newline&space;{\color{Red}&space;z})

*More arbitrary variables*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;X}\newline&space;{\color{Red}&space;Y})

*Geopotential height*

![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;Z})

*Geopotential:* ![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;\psi})

*Probability:* ![image](https://latex.codecogs.com/gif.latex?\newline&space;{\color{Red}&space;P})

(Add any other formal/informal notations that you have in mind)



# Examples of notations

Functions and calculus |  Discrete math  |  Matrix notation  | Informal (prime and bar)  |  Pseudo/real code  
-----------------------|-----------------|-------------------|---------------------------|-------------
f(x), <a href="https://www.codecogs.com/eqnedit.php?latex=\frac{df}{dx}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\frac{df}{dx}" title="\frac{df}{dx}" /></a>   |  {X<sub>i</sub>} <a href="https://www.codecogs.com/eqnedit.php?latex=\newline\sum_{i=1}^{N}X_{i}\newline\frac{1}{N}\sum_{i=1}^{N}X_{i}Y_{i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\newline\sum_{i=1}^{N}X_{i}\newline\frac{1}{N}\sum_{i=1}^{N}X_{i}Y_{i}" title="\newline\sum_{i=1}^{N}X_{i}\newline\frac{1}{N}\sum_{i=1}^{N}X_{i}Y_{i}" /></a> |  <a href="https://www.codecogs.com/eqnedit.php?latex=\begin{bmatrix}X_{1}\\X_{2}\\.\\.\\.\\X_{3}\\\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{bmatrix}X_{1}\\X_{2}\\.\\.\\.\\X_{3}\\\end{bmatrix}" title="\begin{bmatrix}X_{1}\\X_{2}\\.\\.\\.\\X_{3}\\\end{bmatrix}" /></a><a href="https://www.codecogs.com/eqnedit.php?latex=X^{T}Y&space;=&space;Y^{T}X&space;(\neq&space;XY^{T}&space;or&space;YX^{T})" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X^{T}Y&space;=&space;Y^{T}X&space;(\neq&space;XY^{T}&space;or&space;YX^{T})" title="X^{T}Y = Y^{T}X (\neq XY^{T} or YX^{T})" /></a>| <a href="https://www.codecogs.com/eqnedit.php?latex=X^{T}Y&space;=&space;Y^{T}X&space;(\neq&space;XY^{T}&space;or&space;YX^{T})" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X^{T}Y&space;=&space;Y^{T}X&space;(\neq&space;XY^{T}&space;or&space;YX^{T})" title="X^{T}Y = Y^{T}X (\neq XY^{T} or YX^{T})" /></a>  | cov(X,Y)

* **priviledge of columns in matrix:**
    * way of seeing table in paper 
    * column show items to care about
    * rows represent list/instances/data 
    


# Probability and statistics

Probability 
-----------------------
Infers the characteristics of a population of samples

![image](https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Comparison_mean_median_mode.svg/320px-Comparison_mean_median_mode.svg.png)![image](http://analystnotes.com/graph/quan/SS02SBloso1.gif)
* Mode 
  * most frequent value
  * Comes from the peak of probability distribution  
* PDF: A Probability Density function is a function P(x), whose integral over its domain is equal to 1.
<a href="https://www.codecogs.com/eqnedit.php?latex=\int_{-\infty}^{&plus;\infty}P(x)dx=1\newline\int_{-\infty}^{&plus;\infty}P(x)xdx=\overline{x}&space;(Mean:&space;1st\&space;moment)\newline\int_{-\infty}^{&plus;\infty}P(x)x^2dx=\overline{x'^2}&space;(Variance:&space;2nd\&space;moment)&space;\newline\int_{-\infty}^{&plus;\infty}P(x)x^3dx=\overline{x'^3}&space;(Skewness:&space;3rd\&space;moment)\newline&space;Integral\&space;of\&space;P=1\newline\therefore&space;dP/dx\&space;is\&space;probability\&space;density\newline\therefore\int_{-\infty}^{&plus;\infty}\frac{dP}{dx}dx=1=P" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\int_{-\infty}^{&plus;\infty}P(x)dx=1\newline\int_{-\infty}^{&plus;\infty}P(x)xdx=\overline{x}&space;(Mean:&space;1st\&space;moment)\newline\int_{-\infty}^{&plus;\infty}P(x)x^2dx=\overline{x'^2}&space;(Variance:&space;2nd\&space;moment)&space;\newline\int_{-\infty}^{&plus;\infty}P(x)x^3dx=\overline{x'^3}&space;(Skewness:&space;3rd\&space;moment)\newline&space;Integral\&space;of\&space;P=1\newline\therefore&space;dP/dx\&space;is\&space;probability\&space;density\newline\therefore\int_{-\infty}^{&plus;\infty}\frac{dP}{dx}dx=1=P" title="\int_{-\infty}^{+\infty}P(x)dx=1\newline\int_{-\infty}^{+\infty}P(x)xdx=\overline{x} (Mean: 1st\ moment)\newline\int_{-\infty}^{+\infty}P(x)x^2dx=\overline{x'^2} (Variance: 2nd\ moment) \newline\int_{-\infty}^{+\infty}P(x)x^3dx=\overline{x'^3} (Skewness: 3rd\ moment)\newline Integral\ of\ P=1\newline\therefore dP/dx\ is\ probability\ density\newline\therefore\int_{-\infty}^{+\infty}\frac{dP}{dx}dx=1=P" /></a>


# Statistics
-----------------------
Deals with characterizing a set of number

If X = {X<sub>i</sub>} = {5, 3, -2, 11, 0, -7, 4}
* median = 3
* mean = 2.0
* Spread
  * Range = {-7, 11}
  * <a href="https://www.codecogs.com/eqnedit.php?latex=|\overline{X'}|" target="_blank"><img src="https://latex.codecogs.com/gif.latex?|\overline{X'}|" title="|\overline{X'}|" /></a> :
    * Mean absolute deviation (MAD)
    * L1 norm
  * <a href="https://www.codecogs.com/eqnedit.php?latex=|\overline{X'^2}|" target="_blank"><img src="https://latex.codecogs.com/gif.latex?|\overline{X'^2}|" title="|\overline{X'^2}|" /></a> :
    * Variance
    * L2 norm
  * <a href="https://www.codecogs.com/eqnedit.php?latex=\sqrt{\overline{X'^2}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\sqrt{\overline{X'^2}}" title="\sqrt{\overline{X'^2}}" /></a>
    * Standard deviation (std)
    * Unit of X
  * <a href="https://www.codecogs.com/eqnedit.php?latex=\sqrt{\overline{X^2}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\sqrt{\overline{X^2}}" title="\sqrt{\overline{X^2}}" /></a>
    * Root mean square (RMS)
    * Bias and flux component
    * Mean component
  * <a href="https://www.codecogs.com/eqnedit.php?latex={\overline{X'^3}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?{\overline{X'^3}}" title="{\overline{X'^3}}" /></a>
    * Signs of values are retained
    * If the magnitude is big, then skewness is way bigger
    
    
 # Virtue of statistics
 * Simple
 * Robust (to outliers)
 * Efficient (converges with large N)
 * Unbiased
