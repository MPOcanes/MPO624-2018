## Maximum Covariance Analysis (MCA, EOF-PC analysis, factor analysis) 
### and its Matrix Algebra underpinnings 
#### (eigenvector-eigenvalue diagonalization of square matrices, or SVD more generally)
#### (aka linear algebra, np.linalg package) 

Due: April 24, 2018

### 1. Linear algebra concepts needed for user-level understanding. See Appendix of Martinson in Readings, or find your own sources (feel free to cite good ones you find). 
  
**1.1 Vocabulary and basics**

  a. What are two ways to get a square covariance matrix from a nonsquare 'data table' matrix? 
  
  b. What are the ranks of those two square matrices, if none of your data are redundant? 
  
  c. How many unique nonzero eigenvalues does each seuare matrix have? 
  
  d. What are the desirable (useful) properties of eigenvectors? 
  
  e. What is the relationship between the eigenvalues and the Singular Values in a SVD of the nonsquare data table matrix? (HINT: a good source is pages 508-509 in assignments/module3-empiricaldecomp/Readings/Martinson_pageproof.pdf)
  
**1.2. An exercise**

Use python (or Matlab) to input a 'data table' style matrix with all positive values, with a 'structural' dimension of 2 and 'samples' dimension of 3. 
 
  a. Use linalg.svd() to calculate the left and right singular vectors and the singular value matrix (or list of elements, since it is diagonal in form). Reconstruct your data from the returned ULVd<sup>T</sup> matrices using matrix multiplication operations. 
  
  b. Now build the 2x2 and 3x3 covariance matrices. Use the linalg.eig() method on these, then reconstruct. What is the difference from part a. and from each other? What is lost in this approach? (HINT: which 2 different dimensions of means are removed in your two different calls to 'covariance' function?) Is the full data reconstructed if you use d<sup>T</sup>d instead of covariance? Submit your results along with the codes.
  
### 2. More applied 

2.1 Write a sensible paragraph explaining how time series smoothing can be accomplished with either fft->(edit spectrum)->ifft operations, or with a matrix multiplication (sketch a matrix that will do the job when mltiplied by the column vector containing the time series). 

2.2 Write a sensible paragraph explaining how time series differentiation can be accomplished with either fft->(edit spectrum)->ifft operations, or with a matrix multiplication (sketch a matrix that will do the job when mltiplied by the column vector containing the time series). 

2.3 Write a sensible paragraph explaining how its second derivative can be computed with either fft->(edit spectrum)->ifft operations, or with a matrix multiplication (sketch a matrix that will do the job when mltiplied by the column vector containing the time series). 

2.4 Consider the fingerprint image compression example from the notebook. Discuss the relative merits of Fourier truncation (fft->store only part of the spectrum, to be ifft'd by the end user) vs. EOF/SVD truncation (store only a limited set of 1D structures in each dimension, to be multiplied by the end user) for reducing the size of images like this for communication or storage. You might like to play with some image blurring techniques from http://www.scipy-lectures.org/advanced/image_processing/, or build your own from fft --> truncate --> ifft pipeline using numpy.fft functions (https://docs.scipy.org/doc/numpy-1.14.0/reference/routines.fft.html). 

Given the 480x400 size of the image, discuss the compromises if could you get if you could only keep, say, 10000 numbers? Is *maximum variance* the most useful measure of compression, or is there some other virtue in imagery (like connectivity of curving features) that might be more important to fingerprint recognition? 





