function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
theta_r = [0;theta(2:end)];%正则化的时候不包括theta0，或者说theta0为0
J = sum((X*theta-y).^2)/2/m + sum(theta_r.^2)*lambda/2/m;

grad = X'*(X*theta-y)/m + theta_r*lambda/m;

%h = 1.0./(1.0+exp(-theta'.*X));
%J = ((h-y).^2+lambda*theta.^2)/2/m;





% =========================================================================

grad = grad(:);

end
