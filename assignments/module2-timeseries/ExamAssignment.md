# Concepts and vocabulary of Fourier analysis

0. What are the definitions and units of _wavelength_, _period_, _frequency_,  _wavenumber_, _amplitude_, _phase_? What does _monochromatic_ mean? 

1. Write down the continuous Fourier transform of a function f(t), involving an integral over t (f' = ∫ f(t)...). Write down its inverse, which maps the information back. Sketch the sine and cosine functions necessary to show that, for any real function (or series) f(t), the power spectrum is _symmetric_: that is, for any absolute frequency |ω|, exp(iωt) and exp(-iωt) have an equal magnitude of projection onto f(t). What does this imply about time-reversed signals (flipping the sign of t)? 

3. Write down the decomposition of a data series V(t) in [0,L] as a sum of cosine terms (with coefficients a0, a1, a2, a3...) and sine terms (with coefficients b1, b2, b3...), for frequencies (0,1,2,3...) times the lowest possible frequency ω<sub>0</sub> = (2π/L).  Why is there no b0 coefficient? Show how a<sub>j</sub> and b<sub>j</sub> relate to complex c<sub>j</sub> in V = ∑ c<sub>j</sub> exp(iω<sub>0</sub> t⋅j)

4. Show that this is an _orthogonal decomposition_ of V: square the right hand side (mentally) and write down the kinds of cross terms that vanish. For one such cross term, sketch the two functions that are multiplied, and sketch their product, and use shading to show that its positive lobes are exacly canceled by its negative lobes. Write down what this means for the decomposition of the _variance of V_ (related to kinetic energy, if V is a velocity). This result is called _Parseval's theorem_. In light of this, what is a _power spectrum_ P(ω), and why is it called "power"? (Hint: what is the relationshiop of power and energy in the physical domain)?

5.  What aspect of your estimate of P(ω) is compromised, and how, by having a _finite length or duration_ of your data series? (Hint: does this impact low frequencies or high?)  What aspect of P(ω) is compromised, and how, by a _finite spacing between values in your series_? (again, low frequencies or high?) What aspect is compromised (and how) by treating a finite, nonperiodic segment of data (as _all time series_ truly are...) as if it were periodic? (Hint: Think about the end points, and the spectrum of a step function.) 

6. The power spectrum contains only _half of the information_ (squared amplitude a<sup>2</sup> + b<sup>2</sup>) needed to reconstruct the original data. Where is the other half? What happens to a data series if you preserve P(ω) but randomize the phase of each wavelength? 

7. **Why** would a sensible person decompose or expand their data series into a sum of harmonic (sinusoidal) functions? 

  a. List some reasons why we might we expect or hope to find such signals in the atmosphere and ocean. Be sure to use both the words forced and free in your answer, and explain why harmonic forcing is expected. 

  b. Explain the link between finding a statistically significant periodicity (a spectral peak) and predictability. 
