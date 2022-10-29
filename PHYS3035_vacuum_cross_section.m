%%
%-----------------------------------------------------------------------
% Script %
%-----------------------------------------------------------------------
a = 0.0721; %m
b = 0.034; %m
x = 0:0.00001:a; %m
y = zeros(1,length(x)); %m
amp = b; %m
per = 2*a; %1/s
for i = 1:length(x)
    y(i) = amp*sin((2*pi/per)*x(i));
end
%%
%-----------------------------------------------------------------------
% Plotting %
%-----------------------------------------------------------------------
xlim([0, 0.0721])
ylim([0, 0.034])
line_width = 2;
axes_fontsize = 24;
set(0,'DefaultAxesFontSize',axes_fontsize)
set(0,'defaultAxesFontName','Times')
f = figure(1);
    f.Color = "white"; hold on
p = plot(x,y,'Color','r','LineWidth',line_width);
formatSpec = 'm = 1' ;
A_sub = sprintf(formatSpec,1);
title(A_sub,'FontWeight','Normal')    
xlabel("$x$ (metres)",'interpreter','latex')
ylabel("$y$ (metres)",'interpreter','latex')
formatSpec = '%.0e' ;
A_min_leg = sprintf(formatSpec,min(a));
A_max_leg = sprintf(formatSpec,max(a));