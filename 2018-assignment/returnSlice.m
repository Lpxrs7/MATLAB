function s = returnSlice(array, sliceNum, orientation)
% . returnSlice - return a single slice (2D) from a 3d or 4d array
%
% . RS 20-11-2018 
% 
% . squeeze / mean /  array 
% . use the mean across time - Remember to use "array" and not data

m = squeeze(mean(array,4));

% if orientation is not given, keep the last (3rd?) index fixed

if nargin < 3, orientation = 3; end
 
% pick data, keeping dimension=?orientation? fixed 

% use squeezed version (m) that uses the mean across time...
switch orientation
    case 1
        s = m(sliceNum,:,:);
    case 2
        s = m(:,sliceNum,:);
    case 3
        s = m(:,:,sliceNum);
end
 
% now also make sure that s doesn't have 
% some weird extraneous dimensions - GOTCHA
s = squeeze(s);
 
end
