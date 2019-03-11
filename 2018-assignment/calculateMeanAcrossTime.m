function m = calculateMeanAcrossTime(array)
% calculateMeanAcrossTime: takes a 4d array of data and returns the mean
% across time (4th Dimension)
%
% .  Should be used like this:
%           m = calculateMeanAcrossTime(array)
%
% . For now data set is 64x64x24x160
%

m = mean(array, 4);


    
end

