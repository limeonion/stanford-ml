function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

c=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
sig=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

count=length(c);

counter=1;

%Looping over every value of c and sigma and storing the values with theoir
%respective error
for i=1:count
    for j=1:count
                
        c_val=c(i);
        sig_val=sig(j);
        
        m = svmTrain(X, y, c_val, @(x1, x2) gaussianKernel(x1, x2, sig_val));
        p = svmPredict(m, Xval);
        
        error = mean(double(p ~= yval));
        
        result(counter,:)= [error,c_val, sig_val]; 
        
        counter=counter+1;
        
    end
end

%sorting the reult matrix in the ascending order, so the sorted matrix's
%1st row will have optimal value of c and sigma
result=sortrows(result,1);

C=result(1,2);
sigma=result(1,3);




% =========================================================================

end
