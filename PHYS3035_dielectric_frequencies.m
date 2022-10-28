%%
%-----------------------------------------------------------------------
% Calculations %
%-----------------------------------------------------------------------
a = 0.0721; %m
mu0 = 4*pi*10^-7; %mkg/s2A2
eps0 = 8.854*10^-12; %s4A2/m3kg
labels = {'vacuum','air','teflon','glass','wood','sapphire','water'};
mu = [1 1.00000037 1 3/8 1.00000043 0.99999976 1.002676141]*mu0; %mkg/s2A2
eps = [1 1.000536 2.1 8 4 10 79.96]*eps0; %s4A2/m3kg
f = 1./(2*a*sqrt(mu.*eps)); %Hz
fc = f*10^-9; %GHz
fmin = fc*1.25; %GHz
fmax = fc*1.89; %GHz
%%
%-----------------------------------------------------------------------
% Plotting %
%-----------------------------------------------------------------------
axes_fontsize = 24;
set(0,'DefaultAxesFontSize',axes_fontsize)
set(0,'defaultAxesFontName','Times')
f = figure(1);
    f.Color = "white"; hold on
formatSpec = 'Various Dielectrics' ;
A_sub = sprintf(formatSpec,1);
title(A_sub,'FontWeight','Normal')   
ylabel("Frequency (GHz)",'interpreter','latex')
bar(fmax,'c')
hold on
scatter(1:7,fc,'_r','LineWidth',2)
hold on
bar(fmin,'w')
hold on
scatter(1:7,fc,'_r','LineWidth',2)
hold on
scatter((1:7)+0.1,fc,'_r','LineWidth',2)
hold on
scatter((1:7)-0.1,fc,'_r','LineWidth',2)
hold on
scatter((1:7)+0.2,fc,'_r','LineWidth',2)
hold on
scatter((1:7)-0.2,fc,'_r','LineWidth',2)
hold on
scatter((1:7)+0.3,fc,'_r','LineWidth',2)
hold on
scatter((1:7)-0.3,fc,'_r','LineWidth',2)
hold on
scatter((1:7)+0.32,fc,'_r','LineWidth',2)
hold on
scatter((1:7)-0.32,fc,'_r','LineWidth',2)
set(gca,'Xticklabel',[]) 
legend({'Freq. Range','Cutoff Freq.'})
%%
%-----------------------------------------------------------------------
% Labelling %
%-----------------------------------------------------------------------
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.865;
y = 0.95;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Vacuum');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.745;
y = 0.95;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Air');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.625;
y = 0.95;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Teflon');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.505;
y = 0.95;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Glass');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.385;
y = 0.95;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Wood');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.265;
y = 0.67;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Sapphire');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)
xlim=get(gca,'XLim');
ylim=get(gca,'YLim');
x = 0.145;
y = 0.87;
ht = text(x*xlim(1)+(1-x)*xlim(2),y*ylim(1)+(1-y)*ylim(2),'Water');
set(ht,'Rotation',90)
set(ht,'FontName','Times')
set(ht,'FontSize',18)