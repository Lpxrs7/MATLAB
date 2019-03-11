function tSNR = calculateTSnr(array)
% . a function that takes a 4d array of data and returns the temporal
%    signal to noise ratio, where   
%
%                                 mean across time
%                       tSNR = ----------------------
%                                 std across time  
%
% . Should be used like this:
%          tsnr = calculateTSnr(data);
%
% . For now data set is 64x64x24x160
%           

m = mean(array,4);
s = std(array,[],4);

% use code from other helper functions --> explained there.

tSNR = m ./ s;

% divide (./) the mean across time (m) by the standard deviation across time (s) 

end

