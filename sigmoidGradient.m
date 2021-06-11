function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z

sigmoid = 1.0 ./ (1.0 + exp(-z)); % return sigmoid for each element

g = sigmoid .* ( 1 - sigmoid);

