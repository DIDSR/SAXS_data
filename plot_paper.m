clear all
clear all
load('bone.mat','Xbone','Fbone','Fb')
load('mina.mat','Xw_m','Xg_m','Fw_m','Fg_m','FIAA')
load('Felici.mat','xw','xg','Fwm','Fgm')
f = 4*pi;
close all

figure
plot(Xw_m*f,Fw_m,'b','linewidth',2); hold on
plot(Xg_m*f,Fg_m,'r','linewidth',2); hold on

plot(xw*f,Fwm,'g','linewidth',2); hold on
plot(xg*f,Fgm,'k','linewidth',2); hold on

plot(Xbone*f,Fbone,'m','linewidth',2); hold on

plot(Xw_m*f,FIAA,'--b','linewidth',2); hold on
plot(Xbone*f,Fb,'--r','linewidth',2); hold on

xlim([0 4*f])
ylim([0 10])
legend('WM1','GM1','WM2','GM2','Skull','WM and GM IAA','Skull IAA')
xlabel('q [nm{-1}]','fontsize',18);
ylabel('Form factor F','fontsize',18);
set(gca,'fontsize',18)
box off
legend boxoff
%title('Small angles + Wide angles')

s = 'F_wide.pdf';
save2pdf(s,gcf,150)

figure

plot(Xw_m*f,Fw_m,'-b','linewidth',2); hold on
plot(Xg_m*f,Fg_m,'-r','linewidth',2); hold on

plot(xw*f,Fwm,'-g','linewidth',2); hold on
plot(xg*f,Fgm,'-k','linewidth',2); hold on

plot(Xbone,Fbone,'-m','linewidth',2); hold on

plot(Xw_m,FIAA,'--b','linewidth',2); hold on
plot(Xbone,Fb,'--r','linewidth',2); hold on
xlim([0 10])
ylim([0 25])
legend('WM1','GM1','WM2','GM2','Skull','WM and GM IAA','Skull IAA')
xlabel('q [nm{-1}]','fontsize',28);
ylabel('Form factor F','fontsize',28);
set(gca,'fontsize',28)
legend boxoff
box off



s = 'F_small.pdf';
save2pdf(s,gcf,150)