%% Compute matrix mean and off-diagonal mean

load('Input/some_matrix.mat', 'A')
% Here: describe where matrix A came from...
% Warning: large matrix! Don't print! :)

tic;

FullSum = sum(sum(A)); % sum across both dimensions
FullMean = FullSum/numel(A);

OffdiagSum = FullSum - sum(diag(A));
numel_offdiag = numel(A) - size(A,1); % use knowledge that matrix is squared;
OffdiagMean = OffdiagSum/numel_offdiag;

toc;

