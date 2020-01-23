load 'Input/some_matrix.mat'


tic;

y = 0;
x = 0;
aux = 0;
for ii = 1:size(A,1)
    for jj = 1:size(A, 2)
        y = y + A(ii,jj);
        if ii ~= jj
            x = x + A(ii,jj);
            aux = aux + 1;
        end
    end
end


meanA = y/numel(A);
meanB = x/aux;


toc;