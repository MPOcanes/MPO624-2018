# Problem set / take-home exam on Fourier analysis module

0. **Why** would a sensible person decompose or expand their data series into a sum of harmonic (sinusoidal) functions? Hint: This is to make you read my "crashcourse" writeup. 

    - a. List some reasons why we might we expect or hope to find such signals in the atmosphere and ocean. Be sure to use both the words forced and free in your answer, and explain why harmonic forcing is expected. 

    - b. Explain the link between finding a statistically significant periodicity (a spectral peak) and predictability. 

1. What are the definitions and units of _wavelength_, _period_, _frequency_,  _wavenumber_, _amplitude_, _phase_? What does _monochromatic_ mean? 

2. For a data series V(t) = {V<sub>i</sub>} with spacing dt in a finite interval [0,L], write down its Fourier decomposition: 

    a. Write it as a sum of cosine terms (with coefficients a0, a1, a2, a3...) and sine terms (with coefficients b1, b2, b3...), for frequencies (0,1,2,3...) times the lowest possible frequency ω<sub>0</sub> = (2π/L). The lowest freqwuency ω<sub>0</sub> is called the **bandwidth**, since it discretizes the frequency domain into finite bands. After your ... for the many frequencies, make your expression end at the **highest** frequency in V(t) -- it is called the **Nyquist** freqiuency. Why is there no b0 coefficient? 
    
    b. Write it as a **discrete cosine transform**, using cosines only, but with phase offsets in each frequency (that is, with _amplitude A and phase φ_ rather than _sine and cosine_ components in each frequency). How are the A and φ coefficients related to a and b coefficients for each frequency? 
    
    c. Write the complex version of the decomposition: V = ∑<sub>j</sub> c<sub>j</sub> exp(iω<sub>0</sub>t⋅j). Show how a<sub>j</sub> and b<sub>j</sub> relate to the real and imaginary parts of complex c<sub>j</sub>. 
    
    d. Write the power spectrum P(ω) in terms of a and b coefficients; and also in terms of the A and φ coefficients; and also in terms of the complex c coefficients. 

3. Suppose you have 100 years of tropical rainfall data at a point, one value per day, from a model. You want to ask if the model has the Madden-Julian oscillation, which Madden and Julian (1971) detected in nature: a statistically signifficant (above an AR1 red noise null hypothesis) spectral peak, _in the frequency band with 40-50 day periods_.  

    a. One approach is to call numpy.fft() or scipy.periodogram() on the whole 100-year series. For this series with L = 100y and dt = 1d, **how many spectral power estimates fall in the 40-50 day band?** If you smooth the spectrum by averaging all these together, your estimate for the power in this band with have twice that many degrees of freedom (DOFs). 
    
    b. Another approach is to chop the series into segments, and take the power spectrum of each. **How short a segment will have exactly 1 power estimate in the 40-50 day frequency band?** How many such segments can you make from 100 years of data? If you average together all the power spectra of the segments, your estimate for the power in this band with have twice that many degrees of freedom (DOFs). How does it compare to your answer from a.? 
    
    c. Now you want to test if the power in the 40-50 day band is "significanttly" higher than red noise (an AR1 autogressive "red noise", your **null hypothesis**, whose rejection would support the hypothesis that the MJO is present). The test for comparing two variances is called the **F test**. Look it up and study its use. **For the DOFs from a. and b., how large a ratio of your actual power to the AR1 "null hypothesis" power would have p < 0.05 (95% significance level)?** 
    
    d. Suppose your data were not actually daily totals, but hourly rainfall amounts, once per day. If the variance of hourly rainfall is 5x bigger than the variance of daily rainfall, the extra 400% of variance will be misinterpreted as low frequencies, or **aliased**, into the range of your spectrum (between the bandwidth and the Nyqyuist frequency). If you assume that this aliased "undersampling noise" variance is distributed over your spectrum randomly, with a uniform (white) distribution over the frequency bins, what is its effect on the significance problem from c.? Discuss in sensible terms, and calculate if you can (perhaps using a uniform random number generator to estimate things, if you want to get specific).  



---------- Old stuff - appreciate the material, but no need to write answers. 

3.  What aspect of your estimate of P(ω) is compromised, and how, by having a _finite length or duration_ of your data series? (Hint: does this impact low frequencies or high?)  What aspect of P(ω) is compromised, and how, by a _finite spacing between values in your series_? (again, low frequencies or high?) What aspect is compromised (and how) by treating a finite, nonperiodic segment of data (as _all time series_ truly are...) as if it were periodic? (Hint: Think about the end points, and the spectrum of a step function.) 

6. The power spectrum contains only _half of the information_ (squared amplitude a<sup>2</sup> + b<sup>2</sup>) needed to reconstruct the original data. Where is the other half? What happens to a data series if you preserve P(ω) but randomize the phase of each wavelength? 

7. How many _degrees of freedom_ (independent pieces of information) are used to estimate each frequency band of a discrete power spectrum? Hint: Think of the a and b coefficients from 3. We commonly discuss frequencies in terms of their inverse, the _period_. If you have a L=1000 day time series, which _range of periods_ in the spectrum has more independent pieces of information entering your estimate: 40-50 days or 4-4.2 days? Specifically, how many DOFs are in each of these two period ranges? 

1. Write down the continuous Fourier transform of a function f(t), involving an integral over t (f' = ∫ f(t)...). Write down its inverse, which maps the information back. Sketch the sine and cosine functions necessary to show that, for any real function (or series) f(t), the power spectrum is _symmetric_: that is, for any absolute frequency |ω|, exp(iωt) and exp(-iωt) have an equal magnitude of projection onto f(t). What does this imply about time-reversed signals (flipping the sign of t)? 

4. Show that this is an _orthogonal decomposition_ of V: square the right hand side (mentally) and write down the kinds of cross terms that vanish. This result is called _Parseval's theorem_. In light of this, what is a _power spectrum_ P(ω), and why is it called "power"? (Hint: what is the relationshiop of power and energy in the physical domain)?

