function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

% temp1=0;
% temp2=0;
% 
% for i = 1:m
%     temp1 = temp1 + X(i,1);
%     temp2 = temp2 + X(i,2);
% end
% 
% mu(1)=temp1/m;
% mu(2)=temp2/m;


mu=sum(X)/m;


% temp1=0;
% temp2=0;
% 
% 
% for i=1:m
%     temp1= temp1 +((X(i,1) - mu(1))*(X(i,1) - mu(1)));
%     temp2= temp2 +((X(i,2) - mu(2))*(X(i,2) - mu(2)));
% end

sigma2 = sum((X-mu).^2)/m;

mu=mu';
sigma2=sigma2';

% sigma2(1)= temp1/m;
% sigma2(2)= temp2/m;





% =============================================================


end
