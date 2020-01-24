function [OffdiagMean, FullMean] = MatMeans(A)
% Compute the mean of off-diagonal elements of A, as well as the full mean. 

FullSum = sum(sum(A)); % sum across both dimensions
FullMean = FullSum/numel(A);

OffdiagSum = FullSum - sum(diag(A));
numel_offdiag = numel(A) - size(A,1); % use knowledge that matrix is squared;
OffdiagMean = OffdiagSum/numel_offdiag;
