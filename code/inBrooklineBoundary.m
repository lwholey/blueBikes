function [ y ] = inBrooklineBoundary( lat, lon)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

if lat > 42.294486 && ...
    lat < 42.35198 && ...
    lon > -71.178612 && ...
    lon < -71.105305
  y = 1;
else
  y = 0;
end

