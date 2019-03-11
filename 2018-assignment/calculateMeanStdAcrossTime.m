function s = calculateMeanStdAcrossTime(array)
% calculateMeanStdAcrossTime - a function that takes a 4D array of data and
%   returns the standard deviation across time.
%
% . Should be used like this:
%          s = calculateMeanStdAcrossTime(data);
%
% . For now data set is 64x64x24x160

 s = std(array, [], 4);
 
 % . "4" because we want the standard deviation across the dimension
 %          of time (x, y, z, t)
 
 % . [] fills unspecified elements:
 %      --> The length of W: std(x, w, dim)
 %          must equal the length of the dimension over which std operates 
 %      --> Elements must be nonnegative
 %      --> Meaning this code is more generalisable to other contexts,
 %          given that you still require the std of the 4th dimension
 
 
end

