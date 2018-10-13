function [ ] = plotData( d )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

figure;
d2016.month = [];
d2016.rides = [];
d2016.stN = [];
d2016.avgRidesPerDay = [];
d2017.month = [];
d2017.rides = [];
d2017.stN = [];
d2017.avgRidesPerDay = [];
d2018.month = [];
d2018.rides = [];
d2018.stN = [];
d2018.avgRidesPerDay = [];
for i = 1:length(d)
  yr = str2num(d(i).year);
  month = str2num(d(i).month);
  rides = d(i).totalRides;
  nStation = length(d(i).stationNames);
  avgRidesPerDay = rides / monthToDays( month );
  switch yr
    case 2016
      d2016.month(end+1) = month;
      d2016.rides(end+1) = rides;
      d2016.stN(end+1) = nStation;
      d2016.avgRidesPerDay(end+1) = avgRidesPerDay;
    case 2017
      d2017.month(end+1) = month;
      d2017.rides(end+1) = rides;
      d2017.stN(end+1) = nStation;
      d2017.avgRidesPerDay(end+1) = avgRidesPerDay;
    case 2018
      d2018.month(end+1) = month;
      d2018.rides(end+1) = rides;
      d2018.stN(end+1) = nStation;
      d2018.avgRidesPerDay(end+1) = avgRidesPerDay;
  end
end

ms = 10;
subplot(2,1,1);
if 0
  plot(d2016.month, d2016.rides, 'd', ...
    'MarkerEdgeColor','g',...
    'MarkerFaceColor','g',...
    'MarkerSize',ms);
  hold on;
  plot(d2017.month, d2017.rides, 's', ...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r',...
    'MarkerSize',ms);
  plot(d2018.month, d2018.rides, 'o', ...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b',...
    'MarkerSize',ms);
  ylabel('rides per month');
else
  plot(d2016.month, d2016.avgRidesPerDay, 'd', ...
    'MarkerEdgeColor','g',...
    'MarkerFaceColor','g',...
    'MarkerSize',ms);
  hold on;
  plot(d2017.month, d2017.avgRidesPerDay, 's', ...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r',...
    'MarkerSize',ms);
  plot(d2018.month, d2018.avgRidesPerDay, 'o', ...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor','b',...
    'MarkerSize',ms);
  ylabel('avg. rides per day');
end
xticks([1:12])
xticklabels({'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})


legend('2016', '2017', '2018', 'Location','NorthWest');
grid on

subplot(2,1,2);
plot(d2016.month, d2016.stN, 'd', ...
  'MarkerEdgeColor','g',...
  'MarkerFaceColor','g',...
  'MarkerSize',ms);
hold on;
plot(d2017.month, d2017.stN, 's', ...
  'MarkerEdgeColor','r',...
  'MarkerFaceColor','r',...
  'MarkerSize',ms);
plot(d2018.month, d2018.stN, 'o', ...
  'MarkerEdgeColor','b',...
  'MarkerFaceColor','b',...
  'MarkerSize',ms);
ylabel('stations in Brookline')

xticks([1:12])
xticklabels({'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'})
grid on

saveas(gcf, '../plots/avgRidesPerDay', 'png')

end

