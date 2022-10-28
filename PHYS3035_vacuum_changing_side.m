%%
%-----------------------------------------------------------------------
% Script %
%-----------------------------------------------------------------------
a = 0.01:0.00001:1; %m
m = zeros(1,length(a));
f = 2.08*10^9; %Hz
c = 2.998*10^8; %m/s
for i = 1:length(a)
    m(i) = int64(2*a(i)*f/c);
end
%%
%-----------------------------------------------------------------------
% Plotting %
%-----------------------------------------------------------------------
line_width = 1;
axes_fontsize = 24;
set(0,'DefaultAxesFontSize',axes_fontsize)
set(0,'defaultAxesFontName','Times')
f = figure(1);
    f.Color = "white"; hold on
p = plot(a,m,'Color','b','LineWidth',line_width);
formatSpec = 'f_{c} = 2.08GHz' ;
A_sub = sprintf(formatSpec,1);
title(A_sub,'FontWeight','Normal')    
xlabel("$a$ (metres)",'interpreter','latex')
ylabel("$m$ (arb. units)",'interpreter','latex')
formatSpec = '%.0e' ;
A_min_leg = sprintf(formatSpec,min(a));
A_max_leg = sprintf(formatSpec,max(a));