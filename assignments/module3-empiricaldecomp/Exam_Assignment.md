
1.	Among the many virtues of matrix algebra are the smoothing and filtering techniques which are used to smooth noises and sharpen edges among various other functions. Suppose,




<a href="https://www.codecogs.com/eqnedit.php?latex=A=\begin{bmatrix}1\2\3\\4\5\6\\1\2\3\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?A=\begin{bmatrix}1\2\3\\4\5\6\\1\2\3\end{bmatrix}" title="A=\begin{bmatrix}1\2\3\\4\5\6\\1\2\3\end{bmatrix}" /></a>

Assume a 2×2 unit kernel and use it to smooth A using matrix multiplication operation. Is this technique similar to convolution?
Would you get the same result by sliding the kernel over A? This technique is also called ‘mean filtering’. Now compute ‘median filtering’ on A. You may extend the border values outside the boundaries. What is the advantage of median filtering over mean filtering?

2.	One approach to EOF analysis is to start from covariance matrices. Calculate the covariance matrices for A (i.e. A^T*A and A*A^T) using matrix multiplication. What are their respective sizes and ranks?

3.	Suppose the values of sea surface temperature are known at grid points <a href="https://www.codecogs.com/eqnedit.php?latex=x_{1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x_{1}" title="x_{1}" /></a>, <a href="https://www.codecogs.com/eqnedit.php?latex=x_{2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x_{2}" title="x_{2}" /></a>……………..<a href="https://www.codecogs.com/eqnedit.php?latex=x_{n}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x_{n}" title="x_{n}" /></a> 
where <a href="https://www.codecogs.com/eqnedit.php?latex=x_{i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x_{i}" title="x_{i}" /></a>’s are correlated with each other. Now in order to determine a new set of independent predictors zi (principal components or PC), we write z in terms of a projection matrix (<a href="https://www.codecogs.com/eqnedit.php?latex=e_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?e_{ij}" title="e_{ij}" /></a>) and <a href="https://www.codecogs.com/eqnedit.php?latex=x_{i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x_{i}" title="x_{i}" /></a>. Express the equations for <a href="https://www.codecogs.com/eqnedit.php?latex=z_{i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_{i}" title="z_{i}" /></a> in matrix form. This is simply the rotation of ‘old’ set of variables (x) to new set of variables (z) using a projection matrix e. e is popularly referred to as Empirical orthogonal function (EOF). Which component of PC explains the maximum amount of variance for x’s?

4.	Show mathematically that the projection coefficient functions (<a href="https://www.codecogs.com/eqnedit.php?latex=e_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?e_{ij}" title="e_{ij}" /></a>) are the eigenvectors of the covariance matrix of x’s. Find the eigenvectors and eigenvalues of 


<a href="https://www.codecogs.com/eqnedit.php?latex=B=\begin{bmatrix}0\1\1\\1\1\1\\0\0\1\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?B=\begin{bmatrix}0\1\1\\1\1\1\\0\0\1\end{bmatrix}" title="B=\begin{bmatrix}0\1\1\\1\1\1\\0\0\1\end{bmatrix}" /></a>. 



Remember that the eigenvectors of a system are not unique and only the ratio of their elements hold importance. Find the fraction of the total variance explained by the first PC in terms of its eigenvalues (with some research). Calculate the percentage of cumulative variance for each PC term.

5.	What is the relationship between eigenvalues-eigenvectors of a covariance matrix and singular values- singular vectors in a SVD decomposition of the data? HINT: refer to book by Martinson (in Readings folder). Use ‘python’ to input a matrix with a spatial dimension of 2 and sampling dimension of 3. Use the appropriate functions to calculate the spatial singular vectors, singular value matrix and the temporal structure matrix. Know what the ‘singular’ value in the singular value matrix signify. Reconstruct your original dataset from these data matrices. Use the same matrix to find the EOFs and PCs using the covariance matrix and then recover your original dataset. Submit your results along with the codes.

6.	One main advantage of using EOF/SVD analysis is data compression. Let’s revisit the fingerprint example. Considering that fourier analysis is an efficient way of compressing a signal (by computing fourier transform of a signal and dropping coefficients with small magnitudes), why would you prefer EOF/SVD analysis for compressing human fingerprints?
