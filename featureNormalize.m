function [X_norm,mean,sd] = featureNormalize(X)
X_norm = X;
mean = zeros(1, size(X, 2));
sd = zeros(1, size(X, 2));
for i=1:size(X,2)
	mean(1,i) = mean(X(:,i));
	sd(1,i) = std(X(:,i));
end
for i = 1:size(X,1)
	for j = 1:size(X,2)
		X_norm(i,j) = (X_norm(i,j)-mean(1,j))/sd(1,j);
	end
	end
end
