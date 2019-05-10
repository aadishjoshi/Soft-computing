function [ weights, costHistory ] = gradient( x, y, weights, learningRate, repetition )
    %   Main algorithm that tries to minimize our cost functions
    
    % Getting the length of our dataset
    m = length(y);
    % Creating a vector of zeros for storing our cost function history
    costHistory = zeros(repetition, 1);
    
    % Running gradient descent
    for i = 1:repetition
        
        % Calculating the transpose of our hypothesis
        h = (x * weights - y)'
        
        % Updating the parameters simultaneously
        weights(1) = weights(1) - learningRate * (1/m) * h * x(:, 1);
        weights(2) = weights(2) - learningRate * (1/m) * h * x(:, 2);
        
        % Keeping track of the cost function
        costHistory(i) = cost(x, y, weights);
        
    end
    
end

