function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%Creating temp variables to store intermediate results and counts
temp1=zeros(1,n);
temp2=zeros(1,n);
temp3=zeros(1,n);
c1=0;
c2=0;
c3=0;

%Iterating over the data set.
for i =1: m
    
    if idx(i)==1
        temp1=temp1+X(i,:);
        c1=c1+1;
    elseif idx(i)==2
        temp2=temp2+X(i,:);
        c2=c2+1;
    else
        temp3=temp3+X(i,:);
        c3=c3+1;
    end
end

ce1=temp1/c1;
ce2=temp2/c2;
ce3=temp3/c3;

centroids(1,:)=ce1;
centroids(2,:)=ce2;
centroids(3,:)=ce3;

% =============================================================


end

