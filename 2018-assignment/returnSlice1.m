function  s = returnSlice1(array, sliceNum, orientation)
% . returnSlice - return a single slice (2D) from a 3d or 4d array
%
% . RS 20-11-2018 
% 
% . squeeze / mean /  array 
% . use the mean across time - Remember to use "array" and not data


% . if orientation is not given, keep the last (3rd?) index fixed

if nargin < 3, orientation = 3; end

% . pick data, keeping dimension? orientation? fixed

% . Check input array is suitable for the function returnSlice1

if ndims(array) == 3                     
    disp('h1: suitable input array for returnSlice1')
    switch orientation
        case 1
              s = array(sliceNum,:,:);
        case 2
              s = array(:,sliceNum,:);
        case 3
              s = array(:,:,sliceNum);
     end
       
elseif ndims(array) == 4              
    disp('h2: suitable input array for returnSlice1')
    m = squeeze(mean(array,4));
    % use squeezed version (m) that uses the mean across time...
    switch orientation
        case 1
              s = m(sliceNum,:,:);
        case 2
              s = m(:,sliceNum,:);
        case 3
              s = m(:,:,sliceNum);
    end
    
else error('data needs to be 3d or 4d')
    
end

% now also make sure that s doesn't have 
% some weird extraneous dimensions - GOTCHA
s = squeeze(s);
 
end

