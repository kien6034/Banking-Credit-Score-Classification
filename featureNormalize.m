function [X_norm mu sigma] = featureNormalize(X)

X_norm = X;
mu = zeros(1, size(X, 2)); % dimesion 1: row, 2: column
sigma = zeros(1, size(X, 2));

mu = mean(X); % mean of X
sigma = std(X); % standard deviation of X


X_norm = (X - mu) ./ sigma;



% ============================================================

end
