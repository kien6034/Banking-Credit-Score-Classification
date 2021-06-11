function [X_norm] = newfeatureNormalize(X, mu, sigma)

X_norm = X;


X_norm = (X - mu) ./ sigma;



% ============================================================

end
