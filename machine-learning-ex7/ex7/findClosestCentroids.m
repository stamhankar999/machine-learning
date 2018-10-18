function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
m = size(X,1)
% You need to return the following variables correctly.
idx = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for example_ind = 1:m
  mincost = 9999999;
  min_centroid_ind = 1;
  for centroid_ind = 1:K
    diff = X(example_ind, :) - centroids(centroid_ind, :);
    cost = diff * diff';
    if cost < mincost
      mincost = cost;
      min_centroid_ind = centroid_ind;
    end
  end
  idx(example_ind) = min_centroid_ind;
end





% =============================================================

end

