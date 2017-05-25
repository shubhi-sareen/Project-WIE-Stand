function pred = predictVal(Theta1, Theta2, Theta3, X)
m = size(X, 1);
pred = zeros(size(X, 1), 1);
h1 = sigmoid([ones(m, 1) X] * Theta1');
h2 = sigmoid([ones(m, 1) h1] * Theta2');
h3 = exp([ones(m,1) h2]*Theta3')./sum(exp([ones(m,1) h2]*Theta3'),2);

[val, pred] = max(h3, [], 2);
end
