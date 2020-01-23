%% Compute matrix mean and off-diagonal mean

load('Input/some_matrix.mat', 'A')
% Here: describe where matrix A came from...
% Warning: large matrix! Don't print! :)

addpath('../FunctionLibrary/')

tic; 
[OffdiagMean, FullMean] = MatMeans(A);
toc;