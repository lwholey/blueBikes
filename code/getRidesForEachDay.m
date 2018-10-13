function [ ridesForEachDay ] = getRidesForEachDay( d )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[nr, ~] = size(d);

[ e ] = colNames();

ridesForEachDay = zeros(31,1);
display(num2str(nr))

for i = 2:nr
  if mod(i,1000) == 0
    display(['Completed ' num2str(i)]);
  end
  startTime = datestr(d{i,e.starttime}+datenum('30-Dec-1899'));
  startDay = str2num(startTime(1:2));

  startLat = d{i,e.startStationLatitude};
  startLon = d{i,e.startStationLongitude};
  
  tmpSn = d{i,e.startStationName};
  if inBrooklineBoundary(startLat, startLon) && ...
      ~onBlackList(tmpSn)
    ridesForEachDay(startDay) = ridesForEachDay(startDay) + 1;
    continue;
  end
  
  endLat = d{i,e.endStationLatitude};
  endLon = d{i,e.endStationLongitude};
  tmpSn = d{i,e.endStationName};
  if inBrooklineBoundary(endLat, endLon) && ...
      ~onBlackList(tmpSn)
    ridesForEachDay(startDay) = ridesForEachDay(startDay) + 1;
  end
end

