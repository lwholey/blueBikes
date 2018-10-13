function [ year, month, totalRides, stationNames, stationCoords ] = getYearMonthTotalRides( fn )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[~,name,~] = fileparts(fn);
year = name(1:4);
month = name(5:6);

[~,~,d] = xlsread(fn);

[stationNames, stationCoords] = getAllStationNamesInBrookline(d);

totalRides = getTotalRidesInBrookline( d );

end

