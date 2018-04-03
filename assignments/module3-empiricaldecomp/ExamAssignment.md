## Early draft of ExamAssignment for module 4: EOFs & a glimpse of machine learning

### Word questions: review modules 1&2, motivate module 3

Comps for MPS students are verbal. Express the main concepts in words: your own, but timeless and personless by being true and essential to the topic. It's a useful view. So let's start at that level, before diving into the math and computer science of how EOFs and other machine learning approaches are implemented as technology.

Q0: What new vistas open with *multidimensional* data, as opposed to module 1's *sets of numbers* and module 2's *sequences and series* of numbers?  

Q1: Toward Q0, recall: What is *analysis*? What is *(co)variance*? What is *analysis of variance* (sometimes abbreviated ANOVA)?

Q3: What is the power of *orthogonality*, in light of Q1?

Q3: What is *lossy data compression*? How does it relate to the concepts of *prioritization of information content*, and **effective** *degrees of freedom*?

Q4: What is the philosophical virtue of *empiricism*, different from Fourier analysis?

Q5: If *data analysis should be driven by the data itself*, what are some ways forward? Is this a path toward *machine learning*, or even toward *artificial intelligence*? What *is* learning, what is intelligence?


### Discussion, motivating module 3 lab.

This is a first attempt at a highest-level summary of the essentials of the topic of *Empirical Orthogonal Function (EOF)* analysis.

EOF analysis is a statistical procedure whose strength is *dimension reduction*, or *lossy data compression* -- but sometimes it may align with our physical problems, just as velocity variance aligns with "kinetic energy", cov(w,T) aligns with "heat flux", or the sinusoids of Fourier analysis align with the solutions to physical equations governing linear waves.

EOF analysis fundamentally a procedure on *2-dimensional* data arrays. One dimension is *structural*: that is, we want results to remain a function of this dimension -- often space. The other is *statistical*: that is, we want to summarize over this set of 'instances' -- often time. But the principle is more general: for instance the structural dimension may be *a set of chemical species* rather than space (see Peterson_mudcore example). Often the structural dimension is actually 2D geographical space (lat x lon). In that case, we have to *pack* the data into one structure dimension, do the math, and then *unpack* back into lat x lon, using numpy.reshape methods, before plotting. It doesn't matter what order this packing is done, as long as the unpacking is its opposite!

EOF analysis is a special case of *Maximum Covariance Analysis* (MCA). **Co**-variance between a variable **and itself** is a special case (called variance). For instance, *power spectrum analysis* P = w^ * w^, the complex conjugate product of complex Fourier coefficients w^, is a special case of the *cospectrum or cross-spectrum* between two variables, w^ * T^, which an be related physically to vertical heat flux, like in a boiling pot. In the same way, EOF analysis can be used to decompose covariance, not just variance.

-----------

### Vocabulary clues to the nature of EOF/MCA

* **Orthogonal**: This property of a data decomposition has several virtues.  

It allows terms to be estimated separately, in any order. It also allows *analyses of variance* to be used to quantify our postulates of how a variable can be decomposed, for instance into *signal* vs. *noise*, or to *explained* vs. *unexplained* components.

To clarify,  

$q' = term1 + term2 + term3$

becomes

$var(q') = var(term1) + var(term2) + var(term3)$

when the terms are orthogonal, because the cross terms vanish when averaging the square of the right hand side of the equation in the var() operation.

That vanishing is the very *definition* of orthogonal -- but is also the key to why it is useful. *It makes analysis of variations relevant to additive decompositions of data*, the very nature of "analysis" (decomposing things into constituent parts). Separating the mean from anomalies is an orthogonal decompositions. One-predictor linear regression and its resudial are an orthogonal decomposition. Fourier decompostion of time series is orthogonal. **Show these on paper.**

**Empirical**: In the course module order, EOFs follow meaningfully from Fourier decompostion (which involved orthogonal, but *arbitrary* functions. In EOF analysis, one derives functions from the data itself. But how? It is also a natural order because EOFs require 2-dimensional data, of which at least one dimension is meaningful (ordered like a series, or at least labeled like chemical species). It follows the progression from sets of numbers {X} to series f(t) to g(x,t).

**Maximum Covariance** is a principle. Notice the relationship to the concept we have already used of *least-squares fitting* (maximizing the variance that is fitted, minimizing residual), which we saw in module 1 (regression) is tantamount to *making the residual uncorrelated to the fitted term(s)*.

So how can we implement this principle to define EOFs? I can't quite actually see the path, so I haven't written a book on it: see Martinson (Readings). But because of the orthoginality principle, the answer can be:

$q'(x,t) = EOF1(x) PC1(t) + residual$

and then

$residual = EOF2(x) PC2(t) + residual2$

and so on.

Step by step fitting works, *which means we just need to understand one step!* So what is that step?


This is where **compression** thinking helps: We want to capture the most variance possible from q(x,t) **(array size NXxNT)** in the separated treatment EOF(x)PC(t) **(array size NX + NT)**.

### The actual computation of EOF/MCA

I don't know why, but EOFs are *eigenvalues of the auto-covariance matrix* cov(q,q). Auto-covariance is a fancy word for variance, that famous special case of covariance as mentioned above.

But what is cov(q,q) for q(x,t)? Is it the temporal covariance C_t(x,x)? or the spatial covariance C_x(t,t)? **It turns out, both!** As a proactical matter, we can choose whichever matrix is of lower **rank**.

Now I guess we need to understand **eigenvector-eigenvalue** decomposition of a square matrix, and what **rank** is.

## Math crash review: Matrix algebra

Matrix math is a special set of definitions and operations around *2D arrays of pure numbers*. If the numbers have units, they need to be scrubbed out with scaling factors, and reinserted into the results at the end if the result is meant to be a physical one. This means you need to think sensibly and carefully about *standardizing* your variables, especially if you combine heterogeneous variables into a common MCA procedure.

Matrices are used in algebra as a way to remove the variables and emphasize the coefficients in multi-linear systems of equations:

y1 = ax1 + bx2
y2 = cx1 + dx2

can be summarized as

Y = Mx, with
M = [ [a,b],[c,d] ] -- Write by hand! We need a way to typeset this! However Python or Matlab code handle it would be best. Better study that.

What is (BOARD/PENCIL):
* a row Matrix
* a column matrix
* matrix multiplication? is **AB** = **BA**?
* transpose
* **A<super>T</super>A** for a column matrix (like a data table)
* **AA<super>T</super>** for a " " " " " "
* the identity matrix
* a square matrix
* the rank of a square matrix
* the inverse of a square matrix

Illustrate some uses of matrix multiplication

  - Derivative of time series: BOARD/PENCIL
  - Smoother " " " : BOARD/PENCIL

What information is in an autocovariance matrix C = **A<super>T</super>A** when A is anomaly column vectors? Let's look at some.


What would it mean for var(VV<super>T</super>) to be **as big** as it can be, with V as an eigenvector of the auto-covariance matrix C?

We are getting warmer... can anyone see through all this? If not, we trust and memorize. That can be enough. These are power tools, *iff* you learn to be alert to the words "column" vs. "row" in an otherwise arbitrary 2D grid. Still, we long for the endless immensity of the sea, and wish to understand better. 
