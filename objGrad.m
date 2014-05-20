function [obj G] = ObjGrad(X,A)
%%  X is DXD matrix, so does G.
%   A is DXN matrix

    dim = size(A,1);
    
    weight = [1:dim]; % origin
    weight = [dim:-1:1]; % 2_DecByOne
    W = diag(weight);

    B = X*A;
    obj = norm(sqrt(W)*B)^2;
    G = W*B*A';
 
end % func ObjGrad
