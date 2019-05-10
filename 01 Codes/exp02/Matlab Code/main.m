% Loading the dataset
dataSet = load('TestDataSet.txt');

% Storing the values in seperate vectors
x = dataSet(:, 1);
y = dataSet(:, 2);

% Do you want feature normalization?
normalization = true;

% Applying mean normalization to our dataset
if (normalization)
    maxX = max(x);
    minX = min(x);
    x = (x - maxX) / (maxX - minX)
end

% Adding a column of ones to the beginning of the 'x' matrix
x = [ones(length(x), 1) x]

% Plotting the dataset
figure;
plot(x(:, 2), y, 'rx', 'MarkerSize', 10);

% Running gradient descent on the data
% 'x' is our input matrix
% 'y' is our output vector
% 'parameters' is a matrix containing our initial theta and slope
weights = [0; 0];
learningRate = 0.1;
iter = 2000;
[weights, costHistory] = gradient(x, y, weights, learningRate, iter);

% Plotting our final hypothesis
figure;
plot(min(x(:, 2)):max(x(:, 2)), weights(1) + weights(2) * (min(x(:, 2)):max(x(:, 2))));
hold on;

% Plotting the dataset on the same figure
plot(x(:, 2), y, 'rx', 'MarkerSize', 10);

% Plotting our cost function on a different figure to see how we did
figure;
plot(costHistory, 1:iter);

% Finally predicting the output of the provided input
input = 5;
if (normalization)
    input = (input - maxX) / (maxX - minX);
end
output = weights(1) + weights(2) * input;
disp(output);