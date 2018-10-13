function [ ] = plotDayRidesInMonth( d )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

figure;
ms = 10;
plot(d.totalRides, 'o', ...
  'MarkerEdgeColor','b',...
  'MarkerFaceColor','b',...
  'MarkerSize',ms);
grid on;
xticks([0:2:30])
xlim([0 30]);
xlabel('day');
ylabel('Brookline rides');

saveas(gcf, '../plots/septRidesPerDay', 'png')

end

