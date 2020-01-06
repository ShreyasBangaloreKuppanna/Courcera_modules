function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)


 
m = length(y); 

J_history = zeros(num_iters, 1);


for iter = 1:num_iters

 
Error = X * theta - y;
for i = 1:2
    S(i) = sum(Error.*X(:,i));
end

theta = theta - alpha * (1/m) * S'
J_history(iter) = computeCost(X, y, theta);




end


end

