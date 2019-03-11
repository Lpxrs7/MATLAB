function T = returnTimecourse(array, x, y, z)
% returnTimecourse - give function 3 numbers and return a timepoint
% 
%
% 

T = squeeze(array( x, y, z, :));

end

