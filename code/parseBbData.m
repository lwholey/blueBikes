function [ d, stationNames, stationCoords ] = parseBbData( fn )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[~,~,d] = xlsread(fn);

[stationNames, stationCoords] = getAllStationNamesInBrookline(d);

end

