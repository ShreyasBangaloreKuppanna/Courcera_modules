function J = computeCost(X, y, theta)
m = length(y);
J = 0;
h = X * theta;
J= (1/(2*m))*sum((h - y).^2);