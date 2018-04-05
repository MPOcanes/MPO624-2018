### Take-home exam on Fourier module

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
