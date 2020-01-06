function [J, gradient] = costFunction(theta, X, y)

m = length(y); 
J = 0;

gradient = zeros(size(theta));
hypothesis = sigmoid(X*theta);
J = (-1/m) * sum( y .* log(hypothesis) + (1 - y) .* log(1 - hypothesis) );
for i = 1:m
	% hypothesis = mx1 column vector
	% y = mx1 column vector
	% X = mxn matrix
	gradient = gradient + ( hypothesis(i) - y(i) ) * X(i, :)';
end
gradient = (1/m) * gradient;

end