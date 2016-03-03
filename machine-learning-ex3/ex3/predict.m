function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%{
C = max(A,B)%返回一个和A和B同大小的数组，其中的元素是从A或B中取出的最大元素。
C = max(A,[],dim)%返回A中有dim指定的维数范围中的最大值。
[C,I] = max(...)%找到A中那些最大值的索引位置，将他们放在向量I中返回。如果这里有多个相同最大值时，返回的将是第一个的索引。
%}

%网友整理
X = [ones(m, 1) X];  
z2 = Theta1 * X';  
a2 = sigmoid(z2);  
a2 = [ones(1, m);a2];  
z3 = Theta2 * a2;
a3 = sigmoid(z3);  
output =a3';  
[c,i] = max(output, [], 2);  
p = i;  








% =========================================================================


end
