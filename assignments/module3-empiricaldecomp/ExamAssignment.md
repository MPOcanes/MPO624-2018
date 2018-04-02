## ExamAssignment for EOFs & a glimpse of machine learning

An attempt at an 'exam quality', tippy-top highest-level summary of the essentials of the topic of *Empirical Orthogonal Function (EOF)* analysis. EOF analysis is really a statistical procedure for *dimension reduction*, or *lossy data compression*, but sometimes it aligns with our physical problems, just as velocity variance aligns with "kinetic energy", covariance aligns with "flux", and the sinusoids of Fourier analysis happens to align with the solutions to physical equations governing "linear waves".

EOF analysis is a special case of *Maximum Covariance Analysis* (MCA), with "covariance" between a thing and itself (variance) -- just as *power spectrum analysis* P = w^ * w^, the complex conjugate product for complex Fourier coefficients w^, was revealed in the end to be a special case of the *cospectrum or cross-spectrum* between two variables, w^ * T^.

-----------

### Vocabulary clues

* **Orthogonal**: This virtue in data decomposition allows terms to be estimated separately, rather than by rather opaque matrix inversion methods when one has correlated predictors. This is because orthogonality allows analyses of *variance* to be used to estimate postulates of relationships between *variables*. To clarify,  

$q = term1 + term2 + term3$

becomes

$var(q) = var(term1) + var(term2) + var(term3)$

when the terms are orthogonal, since the cross terms vanish when averaging the square of the right hand side of the equation in the var() operation. Well, that vanishing is the very *definition* of orthogonal -- but also the key to why it is useful. *It makes analysis of variations relevant to additive decompositions of data*, the very nature of "analysis" (decomposing things into constituent parts).

**Empirical**: In the course material order, EOFs follow meaningfully from Fourier decompostion (which involved orthogonal, but *arbitrary* functions): in EOF analysis, one derives functions
