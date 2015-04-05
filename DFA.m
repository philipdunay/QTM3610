% Data SPSSc25data.xlsx, import as a matrix
Var = [[age anxiety gender selfcon absence, subtestb],smoke];

obj = fitcdiscr([age anxiety  gender selfcon absence, subtestb],smoke)
structure = obj.Coeffs
DT = structure.DiscrimType
Con = structure.Const
Lin = structure.Linear
c1 = structure.Class1
c2 = structure.Class2

fitlm([age anxiety  gender selfcon absence, subtestb],smoke)
% R^2 - x percent of variability in DV explained by IVs

[d,p,stats] = manova1([age anxiety gender selfcon absence, subtestb],smoke)
% W - Within-groups sum of squares and cross-products matrix
% B	- Between-groups sum of squares and cross-products matrix
% T	- Total sum of squares and cross-products matrix
% dfW - Degrees of freedom for W
% dfB - Degrees of freedom for B
% dfT - Degrees of freedom for T
% lambda - Vector of values of Wilk's lambda test statistic for testing whether the means have dimension 0, 1, etc.
% chisq	- Transformation of lambda to an approximate chi-square distribution
% chisqdf - Degrees of freedom for chisq
% eigenval - Eigenvalues of W-1B
% eigenvec - Eigenvectors of W-1B; these are the coefficients for the canonical variables C, and they are scaled so the within-group variance of the canonical variables is 1
% canon - Canonical variables C, equal to XC*eigenvec, where XC is X with columns centered by subtracting their means
% mdist - A vector of Mahalanobis distances from each point to the mean of its group
% gmdist - A matrix of Mahalanobis distances between each pair of group means
stats.eigenval

% [A,B,r,U,V,stats] = canoncorr(X,Y)
kmo(Var)