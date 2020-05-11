clf
shg
dkcyan = [0 3/4 3/4];
dkmagenta = [3/4 0 3/4];

x = 1:8;
y = [16 18 21 17 15 12 13 17];
del = 1/128;
u = 1:del:8;
s = spline(x,y,u);
p = pchip(x,y,u);
t = u;

subplot(4,2,1)
h = plot(t,s,'-',x,y,'.');
axis([0 9 11 22])
set(h(2),'markersize',16,'color','k')
set(h(1),'color',dkcyan)
set(gca,'xtick',[2 4 6 8])
set(gca,'ytick',[12 15 18 21])
title('spline')

subplot(4,2,2)
h = plot(t,p,'-',x,y,'.');
axis([0 9 11 22])
set(h(2),'markersize',16,'color','k')
set(h(1),'color',dkmagenta)
set(gca,'xtick',[2 4 6 8])
set(gca,'ytick',[12 15 18 21])
title('pchip')

dp = diff(p)/del;
ds = diff(s)/del;
t(end) = [];

subplot(4,2,3)
set(plot(t,ds),'color',dkcyan)
axis([0 9 -6 6])
set(gca,'xtick',[2 4 6 8])

subplot(4,2,4)
set(plot(t,dp),'color',dkmagenta)
axis([0 9 -6 6])
set(gca,'xtick',[2 4 6 8])

d2p = diff(p,2)/del^2;
d2s = diff(s,2)/del^2;
t(1) = [];
k = find(t==round(t));
d2p(k) = NaN;

subplot(4,2,5)
set(plot(t,d2s),'color',dkcyan)
axis([0 9 -20 20])
set(gca,'xtick',[2 4 6 8])

subplot(4,2,6)
set(plot(t,d2p),'color',dkmagenta)
axis([0 9 -20 20])
set(gca,'xtick',[2 4 6 8])

d3p = diff(p,3)/del^3;
d3s = diff(s,3)/del^3;
t(end) = [];
d3p(k-1) = NaN;
d3p(k) = NaN;
d3s(k-1) = NaN;
d3s(k) = NaN;

subplot(4,2,7)
set(plot(t,d3s),'color',dkcyan)
axis([0 9 -40 40])
set(gca,'xtick',[2 4 6 8])
set(gca,'ytick',[-30 0 30])
subplot(4,2,7)

subplot(4,2,8)
set(plot(t,d3p),'color',dkmagenta)
axis([0 9 -40 40])
set(gca,'ytick',[-30 0 30])
set(gca,'xtick',[2 4 6 8])
