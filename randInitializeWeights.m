function W = randInitializeWeights(L_in, L_out)
    
    % Init theta in range of [-epsilon_init, epsilon_init]
    % L_in: Input layer,  L_out: output layer
    W = zeros(L_out, 1 + L_in);
    epsilon_init = 0.66;
    W = rand(L_out, 1 + L_in) * 2 * epsilon_init - epsilon_init;
  

% =========================================================================

end
