function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

prediction = X * theta; %Produces [0,0,0,0,0,...m] M x 1 vector(0 is Initial value)

diff = prediction - y; %Subtract the prediction from real values
 
squareDiff = diff.^2; % Square values

J = 1/(2*m) * sum(squareDiff); %Calculate the cost Function J

% =========================================================================

end
