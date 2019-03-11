function [idx1, idx2, idx3] = FindMaxTSNR(array)
% Find the voxel with the highest tSNR value
% report the location of the voxel with the highest tSNR and its value
%
% hint: look at the documentation for MAX() and look at
% 
% https://uk.mathworks.com/matlabcentral/answers/63247-get-max-value-and-index-of-multidimensional-array
%
% both linear index and [x,y,z] notation are acceptable as solutions.


[idx1, idx2, idx3] = max(array, :, 1); max(array, :, 2); max(array, :, 3);


% idx1 = max(array, [], 1);
% idx2 = max(array, :, 2);
% idx3 = max(array, :, 3);

% M = array(idx1, idx2, idx3);

% max(tSNR, [], [1 2 3])
end

