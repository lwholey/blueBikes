function [ d ] = monthToDays( m )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
daysPerMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
d = daysPerMonth(m);

end

