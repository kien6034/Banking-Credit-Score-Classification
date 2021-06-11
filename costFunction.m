function [J grad] = costFunction(nn_params, input_layer_size, hidden_layer_size, num_labels, X, y, lambda)

%unroll nn_params 
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), num_labels, (hidden_layer_size + 1));

%Function returns J, cost of the neural network and grad, parial gradient
%of the 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

%get number of samples
m = size(X, 1);

%transfer y to vectorized format 
y_matrix = zeros(m, num_labels);
for k = 1:num_labels
    y_matrix(:, k) = y_matrix(:,k) + (y == k);
end


%====================Feed forward=========================
X = [ones(m,1) X]; %Add bias to X terms
A1 = X;

Z2 = X * Theta1';
A2 = sigmoid(Z2);
A2 = [ones(m, 1) A2]; %Add bias

Z3 = A2 * Theta2';
A3 = sigmoid(Z3);

%=====================Cost function =======================

J = -(1/m) *  sum(sum(y_matrix .* log(A3) + (1 - y_matrix) .* log(1 - A3)));

%Regulazied 
reg1 = 0;
reg2 = 0;

reg1 = sum(sum(Theta1(:, 2:end).^2));
reg2 = sum(sum(Theta2(:, 2:end).^2));

J = J + (lambda/(2*m)) * (reg1 + reg2);



%====================Back propagation=========================

delta_3 = A3 - y_matrix;

delta_2 = (delta_3 * Theta2) .* [ones(m, 1) sigmoidGradient(Z2)];

GRA_2 = (delta_3)' * A2;
GRA_1 = (delta_2(:, 2:end))' * A1;

Theta1_grad = Theta1_grad + GRA_1 * (1/m);
Theta2_grad = Theta2_grad + GRA_2 * (1/m);

%regulaized gradient 
Theta1_grad(:, 2:end) = Theta1_grad(:, 2:end) + (lambda/m) * (Theta1(:, 2:end));
Theta2_grad(:,2:end) = Theta2_grad(:,2:end) + (lambda/m)*(Theta2(:,2:end));


%unroll Gradients 
grad = [Theta1_grad(:) ; Theta2_grad(:)];
end
