function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%    vector or scalar).

n = size(z);
for i = 1:n
    g(i) = 1/(1+exp(-z(i)));
end

%{
z_sum=0;
for i=1:size(z)
   z_sum=z_sum+z(i);
end
   g=1/(1+exp(-z_sum));
%}
    %g=1/(1+exp(-z));
% =============================================================

end
