function [ sn, sc ] = getAllStationNamesInBrookline( d )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
sn = {};
sc = {};

[nr, ~] = size(d);

[ e ] = colNames();

for i = 2:nr
  startLat = d{i,e.startStationLatitude};
  startLon = d{i,e.startStationLongitude};
  tmpSn = d{i,e.startStationName};
  if ~ismember(tmpSn, sn) && inBrooklineBoundary(startLat, startLon) && ...
      ~onBlackList(tmpSn)
    sn{end+1} = tmpSn;
    sc{end+1} = [num2str(startLat) ',' num2str(startLon)];
    if ~onWhiteList(tmpSn)
      display([tmpSn ' not on white list']);
      display([num2str(startLat) ',' num2str(startLon)]);
      keyboard
    end
  end
  
  endLat = d{i,e.endStationLatitude};
  endLon = d{i,e.endStationLongitude};
  tmpSn = d{i,e.endStationName};
  if ~ismember(tmpSn, sn) && inBrooklineBoundary(endLat, endLon) && ...
      ~onBlackList(tmpSn)
    sn{end+1} = tmpSn;
    sc{end+1} = [num2str(endLat) ',' num2str(endLon)];
    if ~onWhiteList(tmpSn)
      display([tmpSn ' not on white list']);
      display([num2str(endLat) ',' num2str(endLon)]);
      keyboard
    end
  end
end

