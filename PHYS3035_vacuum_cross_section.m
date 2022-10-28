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
funa = []; %m
for i = 1:length(a)
    if m(i) == 1
        funa = [funa,a(i)];
    end
end
b = zeros(1,length(funa)); %m
amp = 0.034;
per = 2*0.0721; %1/s
for i = 1:length(funa)
    b(i) = -amp*cos(2*pi/per*funa(i));
end
%%
%-----------------------------------------------------------------------
% Plotting %
%-----------------------------------------------------------------------
line_width = 2;
axes_fontsize = 24;
set(0,'DefaultAxesFontSize',axes_fontsize)
set(0,'defaultAxesFontName','Times')
f = figure(1);
    f.Color = "white"; hold on
p = plot(funa,b,'Color','r','LineWidth',line_width);
formatSpec = 'm = 1' ;
A_sub = sprintf(formatSpec,1);
title(A_sub,'FontWeight','Normal')    
xlabel("Side Length $a$ (metres)",'interpreter','latex')
ylabel("Side Length $b$ (metres)",'interpreter','latex')
formatSpec = '%.0e' ;
A_min_leg = sprintf(formatSpec,min(a));
A_max_leg = sprintf(formatSpec,max(a));