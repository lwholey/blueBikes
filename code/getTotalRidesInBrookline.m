function [ y ] = getTotalRidesInBrookline( d )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
y = 0;

[nr, ~] = size(d);

[ e ] = colNames();

for i = 2:nr
  startLat = d{i,e.startStationLatitude};
  startLon = d{i,e.startStationLongitude};
  tmpSn = d{i,e.startStationName};
  if inBrooklineBoundary(startLat, startLon) && ...
      ~onBlackList(tmpSn)
    y = y + 1;
    continue;
  end
  
  endLat = d{i,e.endStationLatitude};
  endLon = d{i,e.endStationLongitude};
  tmpSn = d{i,e.endStationName};
  if inBrooklineBoundary(endLat, endLon) && ...
      ~onBlackList(tmpSn)
    y = y + 1;
  end
end

