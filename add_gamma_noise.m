%% MIDAL - Multiplicative Image Denoising using Augmented Lagrangian
% Implemented by ASHUTOSH GUPTA M.E. (SSA)
% INDIAN INSTITUTE OF SCIENCE
%
% REFERENCES: BIOUCAS-DIAS AND FIGUEIREDO: MULTIPLICATIVE NOISE REMOVAL
% USING VARIABLE SPLITTING AND CONSTRAINED OPTIMIZATION
% IEEE - Transactions in Image processing (2010)

%function to add gamma noise in images.
function [Y,N] = add_gamma_noise(X, M)
%clean - orig image
% add noise to each pixel
% scale = shape = M;
rng('shuffle','twister');
[p q] = size(X);
N = gamrnd(M,1/M,[p q]);
Y = X.*N;

end
