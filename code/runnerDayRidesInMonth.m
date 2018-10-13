clc
close all

d = [];
if 0
  fn = 'C:\Users\lnw3252\Desktop\work\blueBikes\data\201809-bluebikes-tripdata\201809-bluebikes-tripdata.csv';
  %fn = 'C:\Users\lnw3252\Desktop\work\blueBikes\testData\testDataSmall\testData1.csv';
  i = 1;
  [ d(i).year, d(i).month, d(i).totalRides, d(i).stationNames, d(i).stationCoords] = getDayRidesInMonth( fn );
  save('parsedSeptDayData', 'd');
  %save('parsedTestDayData', 'd');
else
  load('parsedSeptDayData');
end

plotDayRidesInMonth(d);


% for j = 1:length(d(i).stationNames)
%   d(i).stationNames{j}
%   d(i).stationCoords{j}
%   keyboard
% end