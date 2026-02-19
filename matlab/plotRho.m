%% plot rho

rs = 0:0.1:10;
cs = -1:0.01:1;
[X,Y] = meshgrid(rs,cs);
Z = (1+X.*Y)./sqrt(1+2.*X.*Y + X.^2);

[C,h] = contourf(X,Y,Z,-1.2:0.3:1.2,'LineWidth',0.25,'ShowText','off','FaceAlpha',1);
set(h,'LineColor','none')

colorMapLength = 40;
third = 0.25.*[1,196,114]./255 + 0.75.*[255,255,255]./255;
pink = [255,255,255]./255;
red = 0.25.*[110,193,248]./255 + 0.75.*[255,255,255]./255;
map1 = [linspace(red(1),pink(1),colorMapLength)', linspace(red(2),pink(2),colorMapLength)', linspace(red(3),pink(3),colorMapLength)'];
map2 = [linspace(pink(1),third(1),colorMapLength)', linspace(pink(2),third(2),colorMapLength)', linspace(pink(3),third(3),colorMapLength)'];
map = [map1;map2];
colormap(map)

red2 = 0.15.*[138,4,88]./255 + 0.85*[255,255,255]./255;
set(gcf,'Color',red2)

set(gca,'FontName','Times','FontSize',20,'LineWidth',1.5)
set(get(gca, 'XAxis'), 'FontWeight', 'bold');
set(get(gca, 'YAxis'), 'FontWeight', 'bold');
set(gca,'TickDir','in');
set(gca ,'Layer', 'Top');
set(gca,'TickLabelInterpreter','latex')
xticks([]);
yticks([]);
xlim([0,6*16/9])
ylim([-1,1])
set(gca,'xticklabels',[])
set(gca,'yticklabels',[])

set(gcf,'Units','pixels','Position',[0,0,1600,900])
set(gca,'Units','pixels','Position',[0,0,1600,900])
