function [ sn ] = getAllStationNames( d )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
sn = {};

[nr, ~] = size(d);

[ e ] = colNames();

for i = 2:nr
  if ~ismember(d{i,e.startStationName}, sn)
    sn{end+1} = d{i,e.startStationName};
  end
  
  if ~ismember(d{i,e.endStationName}, sn)
    sn{end+1} = d{i,e.endStationName};
  end
end

