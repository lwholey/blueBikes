clc
close all
fns = rdir('..\data\**\*.csv');

if 0
  d = [];
  for i = 1:length(fns)
    fn = fns(i).name
    [ d(i).year, d(i).month, d(i).totalRides, d(i).stationNames, d(i).stationCoords] = getYearMonthTotalRides( fn );
  end
  save('parsedData', 'd');
else
  load('parsedData');
end

plotData(d);


% for j = 1:length(d(i).stationNames)
%   d(i).stationNames{j}
%   d(i).stationCoords{j}
%   keyboard
% end